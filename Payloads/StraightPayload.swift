//
//  StraightPayload.swift
//  Pods
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

/// Payload structure for staright geocoding
public struct StraightPayload: Codable {
    var placeID: String
    var licence: String
    var osmType: OSMType
    var osmID: String
    var latitude: String
    var longitude: String
    var displayName: String
    var address: Address?
    var nameDetails: NameDetails?
    var boundingBox: [String]
    var extraTags: ExtraTags?
    
    var placeRank: String?
    var category: String?
    var type: String?
    var importance: Double?
    var icon: String?
    
    enum CodingKeys : String, CodingKey {
        case placeID = "place_id"
        case osmType = "osm_type"
        case osmID = "osm_id"
        case latitude = "lat"
        case longitude = "lon"
        case placeRank = "place_rank"
        case category = "category"
        case type = "type"
        case importance = "importance"
        case displayName = "display_name"
        case icon = "icon"
        case boundingBox = "boundingbox"
        case extraTags = "extratags"
        case address = "address"
        case nameDetails = "namedetails"
        case licence = "licence"
    }
}
