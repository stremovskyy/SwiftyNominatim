//
//  Nominatim.swift
//  SwiftyNominatim_Tests
//
//  Created by Антон Стремовский on 24.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import os.log

class Nominatim {
    var jsonString: String
    var log = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "Nominatim")
    
    init(jsonString: String) {
        self.jsonString = jsonString
    }
    
    func parseReversePayloadWith(jsonString: String) -> ReversePayload? {
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
