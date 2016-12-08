//
//  swiftProgressHUD.swift
//  swiftProgressHUD
//
//  Created by point on 2016/12/8.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

enum swiftProgressHUDModel {
    case text
    case customView
    case animationImage
}

class swiftProgressHUD: UIView {
    open var currentView:UIView!
    open var hudMaskView:UIView!
    open var hudView:UIView!
    open var blurView:UIVisualEffectView!
    
    //默认尺寸
    fileprivate var defaultHudSize:CGSize = CGSize(width: 150, height: 100)
    
    // MARK:- 尺寸
    open var currentHudSize:CGSize = CGSize.zero {
        didSet{
            defaultHudSize = currentHudSize
            hudView.frame = CGRect(x: 0, y: 0, width: defaultHudSize.width, height: defaultHudSize.height)
            blurView.frame = CGRect(x: 0, y: 0, width:defaultHudSize.width, height: defaultHudSize.height)
            hudView.center = CGPoint(x:currentView.frame.size.width/2 , y: currentView.frame.size.height/2)
        }
    }
    
    // MARK:- 延时关闭
    open var afterDelay:CGFloat = 0.0 {
        didSet{
            hideView(afterDelay: afterDelay)
        }
    }
    
    // MARK:- 设置文字
    open var titleText:String = "" {
        didSet{
            setupHudTitle(title: titleText)
        }
    }
    
    // MARK:- 类型
    open var mode:swiftProgressHUDModel = .text {
        didSet{
            
        }
    }
    
    // MARK:- tincolor
    open var hudColor:UIColor! {
        didSet{
            hudView.backgroundColor = hudColor
        }
    }
    // MARK:- maskColor
    open var maskColor:UIColor! {
        didSet{
            hudMaskView.backgroundColor = maskColor
        }
    }
    
    
    // MARK:- 定义image动画
    open var animationImage = [UIImage]() {
        didSet{
            if mode == .animationImage {
                setupAnimationImage(imgArr:animationImage)
            }
        }
    }
    
    // MARK:- 自定义任何View
    open var customView:UIView! {
        didSet{
            if mode == .customView {
                self.currentHudSize = CGSize(width: customView.frame.size.width, height: customView.frame.size.height)
                setupHudCustomView(view: customView)
            }
        }
    }
    
    
    
    // MARK:- 初始化方法
    class func showHUDAddedTo(_ view: UIView, animated: Bool)->Self {
        let hud = self.init()
        hud.currentView = view
        hud.setupMaskView()
        hud.setupHudView()
        return hud
    }
    
}

// MARK:- 设置UI
extension swiftProgressHUD {
    // MARK:- 设置蒙版
    func setupMaskView() {
        hudMaskView = UIView()
        currentView.addSubview(hudMaskView)
        hudMaskView.frame = CGRect(x: 0, y: 0, width: currentView.frame.size.width, height: currentView.frame.size.height)
        hudMaskView.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    // MARK:- 设置Hud
    func setupHudView() {
        
        
        hudView = UIView()
        hudMaskView.addSubview(hudView)
        hudView.frame = CGRect(x: 0, y: 0, width: defaultHudSize.width, height: defaultHudSize.height)
        hudView.center = hudMaskView.center
        hudView.layer.cornerRadius = 8
        hudView.layer.masksToBounds = true
        hudView.backgroundColor = UIColor.black
        
        //增加毛玻璃效果
        let blurEffect: UIBlurEffect = UIBlurEffect(style: .light)
        blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = CGRect(x: 0, y: 0, width: defaultHudSize.width, height: defaultHudSize.height)
        hudView.addSubview(blurView)
    }
    
    // MARK:- 设置HudTitle
    func setupHudTitle(title: String) {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 0
        titleLabel.text = title
        titleLabel.textColor = UIColor.white
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: 0.8)
        
        hudView.addSubview(titleLabel)
        
        //如果设置了当前的大小
        if currentHudSize.width > 0 {
            titleLabel.frame = CGRect(x: 0, y: 0, width: currentHudSize.width - 20 , height: currentHudSize.height - 20)
        }else {
            //限制计算大小
            let limitSize = CGSize(width: currentView.frame.size.width - 20, height: 100)
            let currentSize = self.getTextRectSize(text: title as NSString, font: UIFont.systemFont(ofSize: 15, weight:  0.8), size: limitSize)
            self.currentHudSize = CGSize(width: currentSize.size.width + 20 , height: currentSize.size.height + 20 )
            
            
            titleLabel.frame = CGRect(x: 0, y: 0, width: currentSize.width , height: currentSize.height)
        }
        
        titleLabel.center =  CGPoint(x:hudView.frame.size.width/2 , y: hudView.frame.size.height/2)
    }
    
    
    // MARK:- 设置自己定义的View
    func setupHudCustomView(view: UIView) {
        view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height:  view.frame.size.height)
        hudView.addSubview(view)
        view.center = CGPoint(x:hudView.frame.size.width/2 , y: hudView.frame.size.height/2)
    }
    // MARK:- 设置动画View
    func setupAnimationImage(imgArr: [UIImage]) {
        let imageView = UIImageView(image: imgArr[0])
        imageView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        currentHudSize =  CGSize(width: 100, height: 100)
        imageView.animationImages = imgArr
        imageView.animationDuration = 0.5
        imageView.animationRepeatCount = LONG_MAX
        imageView.startAnimating()
        self.setupHudCustomView(view: imageView)
        
    }
}

// MARK:- 外部动作
extension swiftProgressHUD {
    func hideView(afterDelay: CGFloat) {
        let after =  TimeInterval(afterDelay)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(after * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: {
            self.hudMaskView.removeFromSuperview()
        })
        
    }
}

// MARK:- 其他方法
extension swiftProgressHUD {
    
    
    //计算文本尺寸
    func getTextRectSize(text: NSString,font: UIFont,size: CGSize) -> CGRect {
        let attributes = [NSFontAttributeName: font]
        let option = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect:CGRect = text.boundingRect(with: size, options: option, attributes: attributes, context: nil)
        return rect;
    }
}
