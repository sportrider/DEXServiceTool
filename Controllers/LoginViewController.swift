//
//  LoginViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/3/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTxt: RoundedTextField!
    @IBOutlet weak var pswdTxt: RoundedTextField!
    @IBOutlet weak var loginBtn: RoundedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func didTapLoginButton(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let tabBarVC: MainTabBarViewController = sb.instantiateViewController(withIdentifier: "IDMainTabBarViewController") as! MainTabBarViewController
        
        self.navigationController?.pushViewController(tabBarVC, animated: true)
    }
    
}

