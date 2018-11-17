//
//  DEXAuditViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXAuditViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var auditSegmentControl: UISegmentedControl!
    @IBOutlet weak var auditTableView: UITableView!
    @IBOutlet weak var rawTextView: UITextView!
    
    var deviceData: [DeviceData]?
    var sectionHeaders: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.auditTableView.delegate = self
        self.auditTableView.dataSource = self
        
        auditSegmentControl.selectedSegmentIndex = 0
        auditSegmentValueChanged(auditSegmentControl)
        
        loadDeviceData()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func auditSegmentValueChanged(_ sender: UISegmentedControl) {
        
        switch auditSegmentControl.selectedSegmentIndex {
            case 0:
                self.auditTableView.isHidden = false
                self.rawTextView.isHidden = true
            case 1:
                self.auditTableView.isHidden = true
                self.rawTextView.isHidden = false
            default:
                break
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4   // set for demo...
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDAuditTableViewCell", for: indexPath) as! AuditTableViewCell
        
        let index = indexPath.row + (indexPath.section * (self.sectionHeaders?.count ?? 0))
        
        if index % 2 == 0 {
           cell.backgroundColor = UIColor.groupTableViewBackground
        } else {
           cell.backgroundColor = UIColor.white
        }

        cell.deviceID.text = self.deviceData?[index].deviceID ?? " "
        cell.deviceName.text = self.deviceData?[index].deviceName ?? " "
        cell.deviceDescription.text = self.deviceData?[index].deviceDescription ?? " "
        
        cell.layer.cornerRadius = 10.0
        cell.clipsToBounds = true
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionHeaders?.count ?? 1
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.red
//        return headerView
 //   }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionHeaders?[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as? UITableViewHeaderFooterView
        header?.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
        header?.textLabel?.textColor = UIColor.red
    }

    
    func loadDeviceData() {
        
        self.deviceData = []
        
        self.deviceData?.append(DeviceData(deviceID: "DXS 01", deviceName: "NEC 00000", deviceDescription: "Communication ID 001"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 02", deviceName: "NEC 00001", deviceDescription: "Communication ID 002"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 03", deviceName: "NEC 00002", deviceDescription: "Communication ID 003"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 04", deviceName: "NEC 00003", deviceDescription: "Communication ID 004"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 11", deviceName: "NEC 00011", deviceDescription: "Communication ID 005"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 12", deviceName: "NEC 00012", deviceDescription: "Communication ID 006"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 13", deviceName: "NEC 00013", deviceDescription: "Communication ID 007"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 14", deviceName: "NEC 00014", deviceDescription: "Communication ID 008"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 21", deviceName: "NEC 00021", deviceDescription: "Communication ID 009"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 22", deviceName: "NEC 00022", deviceDescription: "Communication ID 010"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 23", deviceName: "NEC 00023", deviceDescription: "Communication ID 011"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 24", deviceName: "NEC 00024", deviceDescription: "Communication ID 012"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 31", deviceName: "NEC 00031", deviceDescription: "Communication ID 013"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 32", deviceName: "NEC 00032", deviceDescription: "Communication ID 014"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 33", deviceName: "NEC 00033", deviceDescription: "Communication ID 015"))
        self.deviceData?.append(DeviceData(deviceID: "DXS 34", deviceName: "NEC 00034", deviceDescription: "Communication ID 016"))

        
        self.sectionHeaders = ["Section 1", "Section 2", "Section 3", "Section 4"]
        
    }
    
    
}
