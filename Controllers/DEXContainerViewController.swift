//
//  DEXContainerViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXContainerViewController: UIViewController, SegmentControlDelegate {

    
    
    var dexProcessVC: DEXProcessViewController?
    var dexAuditVC: DEXAuditViewController?
    var dexAlertsVC: DEXAlertsViewController?
    var dexPOGVC: DEXPOGViewController?
    var dexHelpVC: DEXHelpViewController?
    
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func didSelectSegment(segment: Int) {
        
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
