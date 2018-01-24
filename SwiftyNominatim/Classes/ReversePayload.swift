//
//  ReversePayload.swift
//  Geocoder
//
//  Created by Антон Стремовский on 24.01.2018.
//  Copyright © 2018 Антон Стремовский. All rights reserved.
//

import Foundation

public enum  OSMType: String,Codable {
    case way = "way"
}

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
        case road
        case subUrban = "suburb"
        case city
        case county
        case state
        case postCode = "postcode"
        case country
        case countryCode = "country_code"
    }
}

public struct NameDetails: Codable {
    var name: String
    var nameEn: String
    var nameRu: String
    var nameUk: String
    
    enum CodingKeys : String, CodingKey {
        case name
        case nameEn = "name:en"
        case nameRu = "name:ru"
        case nameUk = "name:uk"
    }
}
public struct ReversePayload: Codable {
    var placeID: String
    var osmType: String//OSMType
    var osmID: String
    var latitude: String
    var longitude: String
    var placeRank: String?
    var category: String? //Category
    var type: String?
    var addressType: String?
    var displayName: String
    var name: String?
    
    var address: Address
    var nameDetails: NameDetails?
    
    enum CodingKeys : String, CodingKey {
        case placeID = "place_id"
        case osmType = "osm_type"
        case osmID = "osm_id"
        case latitude = "lat"
        case longitude = "lon"
        case placeRank = "place_rank"
        case category
        case type
        case addressType = "addresstype"
        case displayName = "display_name"
        case name
        
        case address
        case nameDetails = "namedetails"
    }
}

