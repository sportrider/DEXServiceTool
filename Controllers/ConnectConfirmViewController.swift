//
//  ConnectConfirmViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/4/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class ConnectConfirmViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var ccMessages: [ConnectConfirmMessage]?

    @IBOutlet weak var ccTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.ccTV.delegate = self
        self.ccTV.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.ccMessages?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ccTV.dequeueReusableCell(withIdentifier: "IDConnectConfirmTableViewCell", for: indexPath) as! ConnectConfirmTableViewCell
        
        cell.messageLbl.text = self.ccMessages?[indexPath.row].message
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.groupTableViewBackground
        }
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func didTapBackButton(_ sender: UIButton) {
        
        dismissMe()
    }
    
    func dismissMe()  {
    
        self.dismiss(animated: true, completion: nil)
    
    }
    
}
