//
//  RoundedTextField.swift
//  DeliveryAssist
//
//  Created by Gary Harris on 7/16/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//


import UIKit
import Foundation

class RoundedTextField : UITextField, UITextFieldDelegate {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        delegate = self
        
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        
        self.layer.backgroundColor = UIColor.groupTableViewBackground.cgColor
        
        self.font = UIFont(name: "System-Bold", size: 17)
        self.clearButtonMode = .whileEditing
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        delegate = self

    }
    


}

