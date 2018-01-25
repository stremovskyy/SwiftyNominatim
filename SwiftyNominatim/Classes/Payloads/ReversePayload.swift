//
//  ReversePayload.swift
//  Geocoder
//
//  Created by Антон Стремовский on 24.01.2018.
//  Copyright © 2018 Антон Стремовский. All rights reserved.
//

import Foundation

/// Payload structure for reverse geocoding
public struct ReversePayload: Payload {
    var licence: String
    var placeID: String
    var osmType: OSMType
    var osmID: String
    var latitude: String
    var longitude: String
    var placeRank: String?
    var category: String? //Category
    var type: String?
    var addressType: String?
    var displayName: String
    var name: String?
    
    var nameDetails: NameDetails?
    var address: Address?
    var boundingBox: [String]
    var extraTags: ExtraTags?
    
    enum CodingKeys : String, CodingKey {
        case placeID = "place_id"
        case osmType = "osm_type"
        case osmID = "osm_id"
        case latitude = "lat"
        case longitude = "lon"
        case placeRank = "place_rank"
        case category = "category"
        case type = "type"
        case addressType = "addresstype"
        case displayName = "display_name"
        case name = "name"
        case boundingBox = "boundingbox"
        case extraTags = "extratags"
        case address = "address"
        case nameDetails = "namedetails"
        case licence = "licence"
    }
}

