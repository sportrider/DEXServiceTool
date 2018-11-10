//
//  RoundedButton.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/10/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import Foundation

import UIKit
import Foundation

class RoundedButton : UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!

        
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        
        self.layer.backgroundColor = UIColor.groupTableViewBackground.cgColor
        
   }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)

        
    }
    
    
    
}
