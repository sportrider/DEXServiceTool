//
//  DEXPOGTableViewHeaderCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/17/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class DEXPOGTableViewHeaderCell: UITableViewCell {

    @IBOutlet weak var headerColumnLbl: UILabel!
    
    @IBOutlet weak var headerPriceLbl: UILabel!
    
    @IBOutlet weak var headerDescLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
