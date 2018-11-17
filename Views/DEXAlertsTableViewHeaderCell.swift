//
//  DEXAlertsTableViewHeaderCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/17/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXAlertsTableViewHeaderCell: UITableViewCell {
    @IBOutlet weak var headerEventLbl: UILabel!
    @IBOutlet weak var headerDateLbl: UILabel!
    @IBOutlet weak var headerTimeLbl: UILabel!
    @IBOutlet weak var headerSubSystemLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
