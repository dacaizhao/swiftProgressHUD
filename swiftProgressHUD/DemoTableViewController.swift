//
//  DemoTableViewController.swift
//  swiftProgressHUD
//
//  Created by point on 2016/12/9.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {
    
    let arrTitle = [".text 不限制大小",".text 限制大小"];
    
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
            hud.titleText = "给我star"
            hud.afterDelay = 2
        }
        
    }
    
}
