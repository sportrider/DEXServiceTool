//
//  DEXAlertsTableViewCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/17/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXAlertsTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var subSystemLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
