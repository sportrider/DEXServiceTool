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
        
        switch segment {
        case 0:
            dexProcessVC?.view.isHidden = false
//            pickUpVC?.view.isHidden = true
//            deliveryVC?.view.isHidden = true
            
            
            self.view.bringSubviewToFront((dexProcessVC?.view)!)
            
 //       case 1:
//            vehicleVC?.view.isHidden = true
//            pickUpVC?.view.isHidden = false
//            deliveryVC?.view.isHidden = true
            
//            self.view.bringSubview(toFront: (pickUpVC?.view)!)
            
//        case 2:
//            vehicleVC?.view.isHidden = true
//            pickUpVC?.view.isHidden = true
//            deliveryVC?.view.isHidden = false
            
//            self.view.bringSubview(toFront: (deliveryVC?.view)!)
            
        default:
            break
        }
        
        
    }
    
    
    
    func setUpContainerView()
    {
        let dexProcessSB: UIStoryboard = UIStoryboard(name: "DEXProcess", bundle: nil)
        self.dexProcessVC = dexProcessSB.instantiateViewController(withIdentifier: "IDDEXProcessStoryboard") as? DEXProcessViewController
 //       self.dexProcessVC?.delegate = self
        self.addChild(dexProcessVC!)
        self.view.addSubview((self.dexProcessVC?.view)!)
        self.dexProcessVC?.view.frame = self.view.bounds
        self.dexProcessVC?.didMove(toParent: self)
        
/*
        
        let pickUpSB: UIStoryboard = UIStoryboard(name: "PickUp", bundle: nil)
        self.pickUpVC = pickUpSB.instantiateViewController(withIdentifier: "IDPickUpViewController") as? PickUpViewController
        
        self.addChildViewController(pickUpVC!)
        
        let deliverySB: UIStoryboard = UIStoryboard(name: "Delivery", bundle: nil)
        self.deliveryVC = deliverySB.instantiateViewController(withIdentifier: "IDDeliveryViewController") as? DeliveryViewController
        
        self.addChildViewController(self.vehicleVC!)
        self.view.addSubview((self.vehicleVC?.view)!)
        self.vehicleVC?.view.frame = self.view.bounds
        self.vehicleVC?.didMove(toParentViewController: self)
        
        self.addChildViewController(self.pickUpVC!)
        self.view.addSubview((self.pickUpVC?.view)!)
        self.pickUpVC?.view.frame = self.view.bounds
        self.pickUpVC?.didMove(toParentViewController: self)
        
        self.addChildViewController(self.deliveryVC!)
        self.view.addSubview((self.deliveryVC?.view)!)
        self.deliveryVC?.view.frame = self.view.bounds
        self.deliveryVC?.didMove(toParentViewController: self)
 */
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
