//
//  DEXPOGViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXPOGViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var pogTV: UITableView!
    
    var pogs: [POG]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadPOGs()
        self.pogTV.delegate = self
        self.pogTV.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        sizeTableView(self.pogTV, height: 40)

    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pogs?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDDEXPOGTableViewCell", for: indexPath) as! DEXPOGTableViewCell
        
        cell.columnLbl.text = self.pogs?[indexPath.row].column
        cell.priceLbl.text = self.pogs?[indexPath.row].price
        cell.descriptionLabel.text = self.pogs?[indexPath.row].description
        
        if indexPath.row % 2 == 0 {
            cell.columnLbl.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
            cell.priceLbl.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
            cell.descriptionLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 1.0)
         } else {
            cell.columnLbl.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
            cell.priceLbl.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
            cell.descriptionLabel.backgroundColor = UIColor.init(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.5)
         }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "IDDEXPOGTableViewHeaderCell") as! DEXPOGTableViewHeaderCell
        
        headerCell.headerColumnLbl.text = "Column"
        headerCell.headerPriceLbl.text = "Price"
        headerCell.headerDescLbl.text = "Description"
        
        headerView.addSubview(headerCell)

        return headerView
    }
    
    
    
    func loadPOGs() {
        
        self.pogs = []
        
        self.pogs?.append(POG(column: "A1", price: "1.00", description: "xxxxx yyyyy zzzzz"))
        self.pogs?.append(POG(column: "A2", price: "2.00", description: "xxxxx yyyyy zzzzz"))
        self.pogs?.append(POG(column: "A3", price: "3.00", description: "xxxxx yyyyy zzzzz"))
        self.pogs?.append(POG(column: "A4", price: "4.00", description: "xxxxx yyyyy zzzzz"))
    }
}



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


