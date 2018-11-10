//
//  DevicesViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/8/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DevicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var devicesTV: UITableView!
    
     override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
 //       self.navigationItem. = "Devices"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = devicesTV.dequeueReusableCell(withIdentifier: "IDDevicesTableViewCell", for: indexPath) as! DevicesTableViewCell
        
        cell.deviceImage.layer.cornerRadius = 10.0
        cell.deviceImage.clipsToBounds = true
        cell.deviceImage.image = UIImage(named: "bluetooth")
//        self.view.bringSubviewToFront(cell.deviceImage)

        
        cell.deviceName?.text = "XXXXXXXXX"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
}
