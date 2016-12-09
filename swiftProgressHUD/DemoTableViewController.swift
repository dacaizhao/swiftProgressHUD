//
//  DemoTableViewController.swift
//  swiftProgressHUD
//
//  Created by point on 2016/12/9.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {
    
    let arrTitle = [".text 不限制大小",
                    ".text 限制大小",
                    ".chrysanthemum 菊花样式 不限制大小",
                    ".chrysanthemum 菊花样式 限制大小",
                    ".customView 可以定义任何样式",
                    ".animationImage 传入图片数组即可",
                    ".circularView 圆形进度条",
                    ".rectangle 矩形进度条",
                    
                    
                    ];
    
    var cycyleTimer : Timer?
    var progress : CGFloat = 0.0
    var HUD : SwiftProgressHUD!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitle.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = arrTitle[indexPath.item]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.item == 0 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.titleText = "赵大财 赵大财 赵大财赵大财赵大财 赵 \n 💯"
            hud.hudColor = UIColor.orange
            hud.mode = .text
            hud.afterDelay = 2
        }
        
        if indexPath.item == 1 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.currentHudSize = CGSize(width: 100, height: 100)
            hud.mode = .text
            hud.titleText = "给我star 给我star"
            hud.afterDelay = 2
        }
        
        if indexPath.item == 2 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.mode = .chrysanthemum
            hud.hudColor = UIColor.orange
            hud.titleText = "给我star 给我star"
            hud.afterDelay = 2
        }
        
        if indexPath.item == 3 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.mode = .chrysanthemum
            hud.currentHudSize = CGSize(width: 200, height: 100)
            hud.titleText = "给我star 给我star"
            hud.afterDelay = 2
        }
        
        
        
        if indexPath.item == 4 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.mode = .customView
            let customView = UIImageView()
            customView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            customView.image = UIImage(named: "img_loading_1")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                let rotaionAnim = CATransition()
                rotaionAnim.type = "rippleEffect"
                rotaionAnim.subtype = "fromLeft"
                rotaionAnim.duration = 0.5
                customView.layer.add(rotaionAnim, forKey: nil)
            }
            hud.customView = customView
            hud.afterDelay = 2
        }
        
        
        if indexPath.item == 5 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.hudColor = UIColor.white
            hud.mode = .animationImage
            hud.animationImage = [UIImage(named : "img_loading_1")!, UIImage(named : "img_loading_2")!]
            hud.afterDelay = 2
        }
        
        if indexPath.item == 6 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.mode = .circular
            hud.hudColor = UIColor.white
            HUD = hud
            cycyleTimer = Timer(timeInterval: 0.2, target: self, selector: #selector(self.scrollToNext), userInfo: nil, repeats: true)
            RunLoop.main.add(cycyleTimer!, forMode:RunLoopMode.commonModes)
        }
        
        if indexPath.item == 7 {
            let hud = SwiftProgressHUD.showHUDAddedTo(self.view, animated: true)
            hud.mode = .rectangle
            hud.hudColor = UIColor.white
            HUD = hud
            cycyleTimer = Timer(timeInterval: 0.2, target: self, selector: #selector(self.scrollToNext), userInfo: nil, repeats: true)
            RunLoop.main.add(cycyleTimer!, forMode:RunLoopMode.commonModes)
        }
    }
}



extension DemoTableViewController  {
    // 定时器的方法
    @objc fileprivate func scrollToNext() {
        progress =  progress + 0.1
        HUD.progress = progress
        if(progress >= 1){
            progress = 0.0
            cycyleTimer?.invalidate()
            cycyleTimer = nil
            HUD = nil
        }
    }
}
