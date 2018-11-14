//
//  AuditTableViewCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/13/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class AuditTableViewCell: UITableViewCell {

    @IBOutlet weak var deviceID: UILabel!
    
    @IBOutlet weak var deviceName: UILabel!
    
    @IBOutlet weak var deviceDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
