//
//  MockData.swift
//  DEXServiceTool
//
//  Created by Gary Harris on 11/13/18.
//  Copyright © 2018 Gary Harris. All rights reserved.
//

import Foundation


struct DeviceData: Codable {

    public let deviceID: String?
    public let deviceName: String?
    public let deviceDescription: String?

    
    enum CodingKeys: String, CodingKey {
        case deviceID = "DeviceID"
        case deviceName = "DeviceName"
        case deviceDescription = "DeviceDescription"
    }
}

    
    
    
    

