//
//  MainTabBarViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/3/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Devices"
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
