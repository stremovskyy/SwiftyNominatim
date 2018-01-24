//
//  ExtraTags.swift
//  Pods
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

/// Extra tags from osm DB (Beta)
struct ExtraTags: Codable {
  var website: String?
  var wheelChair: String?
  var description: String?
  var openingHours: String?
    
    enum CodingKeys : String, CodingKey {
        case website = "website"
        case wheelChair = "wheelchair"
        case description = "description"
        case openingHours = "opening_hours"
    }
}
