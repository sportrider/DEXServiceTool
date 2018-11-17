//
//  DEXAlertsViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit


class DEXAlertsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var alertsTV: UITableView!
    
    var alerts: [Alert]?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadAlerts()
        alertsTV.delegate = self
        alertsTV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sizeTableView(self.alertsTV, height: 40)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.alerts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDDEXAlertsTableViewCell", for: indexPath) as! DEXAlertsTableViewCell
        
        cell.dateLabel.text = self.alerts?[indexPath.row].date
        cell.timeLabel.text = self.alerts?[indexPath.row].time
        cell.subSystemLabel.text = self.alerts?[indexPath.row].subSystem
        cell.eventLabel.text = self.alerts?[indexPath.row].event
        
        if indexPath.row % 2 == 0 {
            cell.dateLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
            cell.timeLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
            cell.subSystemLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
            cell.eventLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
        } else {
            cell.dateLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
            cell.timeLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
            cell.subSystemLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
            cell.eventLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "IDDEXAlertsTableViewHeaderCell") as! DEXAlertsTableViewHeaderCell
        
        headerCell.headerDateLbl.text = "Date"
        headerCell.headerTimeLbl.text = "Time"
        headerCell.headerSubSystemLbl.text = "Sub System"
        headerCell.headerEventLbl.text = "Event"
        
        headerView.addSubview(headerCell)
        
        return headerView
    }
    
    
    func loadAlerts() {
        
        self.alerts = []
        
        self.alerts?.append(Alert(date: "11/13/18", time: "11:13:02", subSystem: "Changer", event: "Inlet Tube Chute Blocked Error"))
        self.alerts?.append(Alert(date: "11/14/18", time: "14:18:16", subSystem: "Bill Validator", event: "Bill Stacker Full"))
        self.alerts?.append(Alert(date: "11/15/18", time: "12:07:09", subSystem: "Refrigeration", event: "Too Cold"))
        self.alerts?.append(Alert(date: "11/16/18", time: "08:08:11", subSystem: "Control System", event: "AC Low"))
        self.alerts?.append(Alert(date: "11/18/18", time: "19:02:28", subSystem: "Vending Mechanism", event: "Column JAM"))

        
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
