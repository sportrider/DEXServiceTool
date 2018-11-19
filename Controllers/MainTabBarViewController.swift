//
//  MainTabBarViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/3/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    @IBOutlet weak var mainTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    
/*
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        switch self.selectedIndex {
            
            case 0:
                    self.title = "Devices"
            case 1:
                    self.title = "Home"
            case 2:
                    self.title = "DEX"
            case 3:
                    self.title = "Toolkit"
            case 4:
                    self.title = "Help"
            default:
            
                return

        }
        
    }
 */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
