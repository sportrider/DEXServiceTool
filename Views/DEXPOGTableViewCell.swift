//
//  DEXPOGTableViewCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/17/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXPOGTableViewCell: UITableViewCell {
    @IBOutlet weak var columnLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
