//
//  Address.swift
//  FBSnapshotTestCase
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

public struct Address: Codable {
    var road: String
    var subUrban: String
    var city: String
    var county: String
    var state: String
    var postCode: String
    var country: String
    var countryCode: String
    
    enum CodingKeys : String, CodingKey {
        case road = "road"
        case subUrban = "suburb"
        case city = "city"
        case county = "county"
        case state = "state"
        case postCode = "postcode"
        case country = "country"
        case countryCode = "country_code"
    }
}
