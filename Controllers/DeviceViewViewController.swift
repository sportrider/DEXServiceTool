//
//  DeviceViewViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/10/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DeviceViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var deviceTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = deviceTV.dequeueReusableCell(withIdentifier: "IDDeviceViewTableViewCell", for: indexPath) as! DeviceViewTableViewCell
        
        cell.connectButton.setTitle("Connect", for: .normal)
        cell.pairButton.setTitle("Pair", for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
