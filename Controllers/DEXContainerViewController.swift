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
        self.view.layer.cornerRadius = 10

        setUpContainerView()
        didSelectSegment(segment: 0)
    }
    
    func didSelectSegment(segment: Int) {
        
        self.dexAuditVC?.view.isHidden = true
        self.dexProcessVC?.view.isHidden = true
        self.dexAlertsVC?.view.isHidden = true
        self.dexPOGVC?.view.isHidden = true
        self.dexHelpVC?.view.isHidden = true
        
        switch segment {
        case 0:
            self.dexProcessVC?.view.isHidden = false
            self.view.bringSubviewToFront((self.dexProcessVC?.view)!)
            
        case 1:
            self.dexAuditVC?.view.isHidden = false
            self.view.bringSubviewToFront((self.dexAuditVC?.view)!)
            
        case 2:
            self.dexAlertsVC?.view.isHidden = false
            self.view.bringSubviewToFront((self.dexAlertsVC?.view)!)
            
        case 3:
            self.dexPOGVC?.view.isHidden = false
            self.view.bringSubviewToFront((self.dexPOGVC?.view)!)
            
        case 4:
            self.dexHelpVC?.view.isHidden = false
            self.view.bringSubviewToFront((self.dexHelpVC?.view)!)

        default:
            break
        }
    }
    
    
    func setUpContainerView()
    {
        let dexProcessSB: UIStoryboard = UIStoryboard(name: "DEXProcess", bundle: nil)
        self.dexProcessVC = dexProcessSB.instantiateViewController(withIdentifier: "IDDEXProcessStoryboard") as? DEXProcessViewController
        self.addChild(dexProcessVC!)
        self.view.addSubview((self.dexProcessVC?.view)!)
        self.dexProcessVC?.view.frame = self.view.bounds
        self.dexProcessVC?.didMove(toParent: self)
        
        
        let dexAuditSB: UIStoryboard = UIStoryboard(name: "DEXAudit", bundle: nil)
        self.dexAuditVC = dexAuditSB.instantiateViewController(withIdentifier: "IDDEXAuditStoryboard") as? DEXAuditViewController
        self.addChild(self.dexAuditVC!)
        self.view.addSubview((self.dexAuditVC?.view)!)
        self.dexAuditVC?.view.frame = self.view.bounds
        self.dexAuditVC?.didMove(toParent: self)
        
        let dexAlertsSB: UIStoryboard = UIStoryboard(name: "DEXAlerts", bundle: nil)
        self.dexAlertsVC = dexAlertsSB.instantiateViewController(withIdentifier: "IDDEXAlertsStoryboard") as? DEXAlertsViewController
        self.addChild(self.dexAlertsVC!)
        self.view.addSubview((self.dexAlertsVC?.view)!)
        self.dexAlertsVC?.view.frame = self.view.bounds
        self.dexAlertsVC?.didMove(toParent: self)
        

        let dexPOGSB: UIStoryboard = UIStoryboard(name: "DEXPOG", bundle: nil)
        self.dexPOGVC = dexPOGSB.instantiateViewController(withIdentifier: "IDDEXPOGStoryboard") as? DEXPOGViewController
        self.addChild(self.dexPOGVC!)
        self.view.addSubview((self.dexPOGVC?.view)!)
        self.dexPOGVC?.view.frame = self.view.bounds
        self.dexPOGVC?.didMove(toParent: self)
        
        
        
        let dexHelpSB: UIStoryboard = UIStoryboard(name: "DEXHelp", bundle: nil)
        self.dexHelpVC = dexHelpSB.instantiateViewController(withIdentifier: "IDDEXHelpStoryboard") as? DEXHelpViewController
        self.addChild(self.dexHelpVC!)
        self.view.addSubview((self.dexHelpVC?.view)!)
        self.dexHelpVC?.view.frame = self.view.bounds
        self.dexHelpVC?.didMove(toParent: self)
        

        applyShadowTo(vw: self.view)
        self.view.layer.cornerRadius = 10
        
    }
    
    func applyShadowTo(vw: UIView) {
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOpacity = 1
        vw.layer.shadowOffset = CGSize.zero
        vw.layer.shadowRadius = 10
        vw.layer.shouldRasterize = true
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
