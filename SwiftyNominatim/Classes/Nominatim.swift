//
//  Nominatim.swift
//  SwiftyNominatim_Tests
//
//  Created by Антон Стремовский on 24.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import os.log

public enum OutPutFormat {
    case json
    case jsonv2
}

/// Main class for work with results recived from nominatim
public class Nominatim {
    /// Stores JSON String from nominatim
    var jsonString: String?
    /// Format JSON String
    var format: OutPutFormat = .json
    
    /// Log file
    var log = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "Nominatim")

    public init() {}
    
    /// init Class with JSON String from nominatim
    public init(jsonString: String, withFormat format:OutPutFormat ) {
        self.jsonString = jsonString
        self.format = format
    }
    
    /**
     Parses String JSON and decodes it to ReversePayload data object
     
     - parameter jsonString: JSON String with from reverse geocoding
     - returns: ReversePayload object or nil if it can't be decode into ReversePayload
     */
    public func parseReversePayloadWith(jsonString: String) -> ReversePayload? {
        let jsonData = jsonString.data(using: .utf8)
        let decoder = JSONDecoder()
        
        do {
            let payload = try decoder.decode(ReversePayload.self, from: jsonData!)
            return payload
        } catch {
            os_log("Cannot parse payload from reverse packet", log: self.log, type: .error)
        }
        return nil
    }
}
