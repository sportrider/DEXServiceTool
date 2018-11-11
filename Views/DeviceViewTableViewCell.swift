//
//  DeviceViewTableViewCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/10/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

protocol DeviceViewTableViewCellDelegate {
    func didTapConnectButton()
    func didTapPairButton()
}



class DeviceViewTableViewCell: UITableViewCell {
    
    var delegate: DeviceViewTableViewCellDelegate?
    @IBOutlet weak var pairButton: RoundedButton!
    @IBOutlet weak var connectButton: RoundedButton!
    @IBOutlet weak var guageLevelLabel: UILabel!
    @IBOutlet weak var peripheralNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func didTapConnectButton(_ sender: Any) {
        //pass parameters here if needed
        delegate?.didTapConnectButton()
    }
    @IBAction func didTapPairButton(_ sender: Any) {
        //pass parameters here if needed
        delegate?.didTapPairButton()
    }
}
