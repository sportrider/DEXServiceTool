//
//  DEXProcessViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXProcessViewController: UIViewController {

    @IBOutlet weak var dexProcessTextView: UITextView!
    @IBOutlet weak var saveSendButton: RoundedButton!
    @IBOutlet weak var scanAssetButton: RoundedButton!
    @IBOutlet weak var startDEXButton: RoundedButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.dexProcessTextView.layer.cornerRadius = 10.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func didTapStartDEXButton(_ sender: RoundedButton) {
    }
    
    @IBAction func didTapSaveSendButton(_ sender: RoundedButton) {
    }
    
    @IBAction func didTapScanAssetButton(_ sender: RoundedButton) {
    }
    
}
