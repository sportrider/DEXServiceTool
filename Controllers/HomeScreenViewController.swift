//
//  HomeScreenViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/3/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var controlView: UIView!
    @IBOutlet weak var manufacturerTxt: RoundedTextField!
    @IBOutlet weak var modelNumTxt: RoundedTextField!
    @IBOutlet weak var serialNumTxt: RoundedTextField!
    @IBOutlet weak var ethernetAddTxt: RoundedTextField!
    @IBOutlet weak var firmwareVerTxt: RoundedTextField!
    @IBOutlet weak var batteryRemText: RoundedTextField!
    @IBOutlet weak var connConfBtn: RoundedButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.parent?.title = "Home"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func didTapConnectConfirm(_ sender: UIButton) {
        
        //  initialize message array for display - replace with actual messages
        var ccMessages: [ConnectConfirmMessage] = []
        
        ccMessages.append(ConnectConfirmMessage(message: "message one"))
        ccMessages.append(ConnectConfirmMessage(message: "Get the new view controller using segue.destination.  Pass the selected object to the new view controller"))
        ccMessages.append(ConnectConfirmMessage(message: "message one"))
        ccMessages.append(ConnectConfirmMessage(message: "In a storyboard based application, you will often want to do a little preparation before navigation override func prepare(for segue: UIStoryboardSegue, sender: Any"))
        ////////
        
        viewConnectConfirmOver(viewController: self, messageArray: ccMessages)
    }

    
}

extension UIViewController {
    
    func viewConnectConfirmOver(viewController: UIViewController, messageArray: [ConnectConfirmMessage]?) {
        let sb = UIStoryboard(name: "ConnectConfirm", bundle: nil)
        let newVC: ConnectConfirmViewController = sb.instantiateViewController(withIdentifier: "IDConnectConfirm") as! ConnectConfirmViewController
        
        newVC.ccMessages = messageArray
        
        viewController.present(newVC, animated: true, completion: nil)
    }
    
    func sizeTableView(_ tv: UITableView, height: CGFloat) {
        tv.estimatedRowHeight = height
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedSectionHeaderHeight = height
        tv.sectionHeaderHeight = UITableView.automaticDimension
    }
    
}
