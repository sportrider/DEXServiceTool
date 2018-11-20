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

    
struct Alert: Codable {
    
    public let date: String?
    public let time: String?
    public let subSystem: String?
    public let event: String?

    
    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case time = "Time"
        case subSystem = "SubSystem"
        case event = "Event"
    }
}
    
    
struct POG: Codable {
    
    public let column: String?
    public let price: String?
    public let description: String?
    
    
    enum CodingKeys: String, CodingKey {
        case column = "Column"
        case price = "Price"
        case description = "Description"
    }
}


struct ConnectConfirmMessage: Codable {
    
    public let message: String?
    
    enum CodingKeys: String, CodingKey {
        case message = "Message"

    }
}

struct ProcessMessage: Codable {
    
    public let message: String?
    
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        
    }
}

struct RawMessage: Codable {
    
    public let message: String?
    
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        
    }
}
