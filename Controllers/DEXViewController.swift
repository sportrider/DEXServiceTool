//
//  DEXViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/5/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    weak var segmentControlDelegate: SegmentControlDelegate?

    @IBOutlet weak var dexContainerView: DEXContainerView!
    
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

    @IBAction func didChangeSegmentValue(_ sender: UISegmentedControl) {
        
        self.segmentControlDelegate?.didSelectSegment(segment: segmentControl.selectedSegmentIndex)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "IDDEXContainerSegue" {
            if let containerVC = segue.destination as? DEXContainerViewController {
                self.segmentControlDelegate = containerVC
            }
        }
        
    }
    
}
