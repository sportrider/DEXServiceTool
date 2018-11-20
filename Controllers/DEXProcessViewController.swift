//
//  DEXProcessViewController.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/11/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXProcessViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var processMessages: [ProcessMessage]?
    
    @IBOutlet weak var processTV: UITableView!
    
    @IBOutlet weak var dexProcessTextView: UITextView!
    @IBOutlet weak var saveSendButton: RoundedButton!
    @IBOutlet weak var scanAssetButton: RoundedButton!
    @IBOutlet weak var startDEXButton: RoundedButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadMessages()
        
        self.processTV.delegate = self
        self.processTV.dataSource = self
        self.processTV.layer.cornerRadius = 10.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.processMessages?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDDEXProcessTableViewCell", for: indexPath) as! DEXProcessTableViewCell
        
        cell.processMessage.text = self.processMessages?[indexPath.row].message
        
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
    
    @IBAction func didTapStartDEXButton(_ sender: RoundedButton) {
    }
    
    @IBAction func didTapSaveSendButton(_ sender: RoundedButton) {
    }
    
    @IBAction func didTapScanAssetButton(_ sender: RoundedButton) {
    }
    
    func loadMessages() {
        //  initialize message array for display - replace with actual messages
        self.processMessages = []
        
        self.processMessages?.append(ProcessMessage(message: "message one"))
        self.processMessages?.append(ProcessMessage(message: "Get the new view controller using segue.destination.  Pass the selected object to the new view controller"))
        self.processMessages?.append(ProcessMessage(message: "message one"))
        self.processMessages?.append(ProcessMessage(message: "In a storyboard based application, you will often want to do a little preparation before navigation override func prepare(for segue: UIStoryboardSegue, sender: Any"))
        ////////
        
        
    
    }
    
}
