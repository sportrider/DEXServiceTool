//
//  RawTableViewCell.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/20/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import UIKit

class RawTableViewCell: UITableViewCell {

    @IBOutlet weak var rawMessageLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
