//
//  ViewController.swift
//  swiftProgressHUD
//
//  Created by point on 2016/12/8.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 private var gradientLayer:CAGradientLayer = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        self.gradientLayer.frame = self.view.bounds
//        
//        self.gradientLayer.colors = [UIColor .clear.cgColor, UIColor.black.cgColor]
//        
//        self.gradientLayer.opacity = 1
//        
//        gradientLayer.locations = [0,0.8]
//        
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
//        
//        gradientLayer.endPoint = CGPoint(x: 1, y:1)
//        
//        view.layer.addSublayer(self.gradientLayer)
        
        
        
//        let blueView = UIView();
//        blueView.backgroundColor = UIColor.blue
//        blueView.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
//        self.view.addSubview(blueView)//系统默认会给autoresizing 约束
        // 关闭autoresizing 不关闭否则程序崩溃
        //blueView.translatesAutoresizingMaskIntoConstraints = false
//
//        
//        
//        
//        let titleLabel = UILabel()
//        titleLabel.backgroundColor = UIColor.gray
//        //titleLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        blueView.addSubview(titleLabel)
//         titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
//        //宽度约束
//        let width:NSLayoutConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.width, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:200)
//        
//        blueView.addConstraint(width)//自己添加约束
//        
//        //高度约束
//        let height:NSLayoutConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.height, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:200)
//        
//        blueView.addConstraint(height)//自己添加约束
//        
//        //右边约束
//        let right:NSLayoutConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.right, relatedBy:NSLayoutRelation.equal, toItem:self.view, attribute:NSLayoutAttribute.right, multiplier:1.0, constant: -20)
//        
//        view.addConstraint(right)//父控件添加约束
//        
//        //下边约束
//        let bottom:NSLayoutConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.bottom, relatedBy:NSLayoutRelation.equal, toItem:self.view, attribute:NSLayoutAttribute.bottom, multiplier:1.0, constant: -20)
//        
//        view.addConstraint(bottom)//父控件添加约
        
        
        /*
        
        let aa:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: blueView, attribute: .centerX, multiplier: 1, constant: 0)
        blueView.addConstraint(aa)
        let bb:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: blueView, attribute: .centerY, multiplier: 1, constant: 0)
        
        blueView.addConstraint(bb)
        
        let width1:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.width, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:50)
        
        titleLabel.addConstraint(width1)//自己添加约束
        
        //高度约束
        var height1:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.height, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:80)
        
        titleLabel.addConstraint(height1)//自己添加约束
        
        titleLabel.removeConstraint(height1)
        
        var height22:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.height, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:20)
        
        titleLabel.addConstraint(height22)//自己添加约束
        */
     
        
//        let width11:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.width, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:80)
//        
//        titleLabel.addConstraint(width11)//自己添加约束
//        
//        //高度约束
//        let height11:NSLayoutConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.height, relatedBy:NSLayoutRelation.equal, toItem:nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier:0.0, constant:80)
//        
//        titleLabel.addConstraint(height11)//自己添加约束

        
        
        
//        let blueView = UIView()
//        blueView.backgroundColor = UIColor.blue
//        blueView.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
//        view.addSubview(blueView)
//        
//        

//        
//        
//        blueView.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        
//        
//        
//
//        
//        var constraint = NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: blueView, attribute: .leading, multiplier: 1, constant: 0)
//        titleLabel.addConstraint(constraint)
//        constraint = NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: blueView, attribute: .trailing, multiplier: 1, constant: 0)
//        titleLabel.addConstraint(constraint)
//        constraint = NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: blueView, attribute: .top, multiplier: 1, constant: 0)
//        titleLabel.addConstraint(constraint)
//        constraint = NSLayoutConstraint(item: titleLabel, attribute: .bottom, relatedBy: .equal, toItem: blueView, attribute: .bottom, multiplier: 1, constant: 0)
//        titleLabel.addConstraint(constraint)
        
        
//        let views = ["titleLabel" : titleLabel] as [String : Any]
//        var cons  = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[titleLabel]-0-|", options: [], metrics: nil, views: views)
//        cons += NSLayoutConstraint.constraints(withVisualFormat: "W:|-0-[titleLabel]-0-|", options: [], metrics: nil, views: views)
//        titleLabel.addConstraints(cons)
        
        
//        titleLabel.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: blueView, attribute: .centerX, multiplier: 1, constant: 0))
//        
//        titleLabel.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: blueView, attribute: .centerY, multiplier: 1, constant: 0))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //444444444444444
    @IBAction func d(_ sender: Any) {
        let hud = swiftProgressHUD.showHUDAddedTo(self.view, animated: true)
        hud.mode = .animationImage
        hud.animationImage = [UIImage(named : "img_loading_1")!, UIImage(named : "img_loading_2")!]
        hud.hudColor = UIColor.white
        hud.maskColor = UIColor.clear
        hud.afterDelay = 10
    }

  
    
    @IBAction func btnClick1(_ sender: UIButton) {
        
        let hud = swiftProgressHUD.showHUDAddedTo(self.view, animated: true)
        hud.currentHudSize = CGSize(width: 100, height: 100)
        hud.titleText = "赵大财 赵大财 赵大财赵大财 赵大财 赵大财赵大财 赵大财 赵大财 赵大财赵大财 赵大赵大财 赵大财赵大财 赵大赵大财 赵大财赵大财 赵大赵大财赵大财 赵大财 赵大财赵大财 赵大财 赵大财赵大财 赵大财 赵大财"
        hud.mode = .text
        hud.afterDelay = 2
        
    }
    
    @IBAction func sss(_ sender: UIButton) {
      
        let hud = swiftProgressHUD.showHUDAddedTo(self.view, animated: true)
        hud.titleText = "赵大财 赵大财 赵大财赵大财赵大财 赵"
        hud.mode = .text
        hud.afterDelay = 2
        
    }
    
    @IBAction func aaaaaa(_ sender: UIButton) {
//        let blueView = UIView();
//        blueView.backgroundColor = UIColor.blue
//        blueView.frame = CGRect(x: 0, y: 200, width: 200, height: 200)
//        self.view.addSubview(blueView)
        
        
//        let hud = swiftProgressHUD.showHUDAddedTo(blueView, animated: true)
//        hud.titleText = "赵大财 赵大财 赵大财赵大赵大财 赵大财赵大财 赵大赵大财 赵大财赵大财 赵大赵大财 赵大财赵大财 赵大赵大财 赵大财赵大财 赵大财 赵大财 赵大财赵大财\n 💯"
//        hud.mode = .text
//        hud.afterDelay = 2
        
//        let hud = swiftProgressHUD.showHUDAddedTo(blueView, animated: true)
//        hud.mode = .customView
//        let view = UIView()
//        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        view.backgroundColor = UIColor.purple
//        hud.customView = view
//        hud.afterDelay = 2
        
    }
    
    

}

