//
//  NameDetails.swift
//  Pods
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

/// Name Details object in payload data
public struct NameDetails: Codable {
    /// Common name
    var name: String
    /// Name in English Language
    var nameEn: String?
    /// Name in Russian Language
    var nameRu: String?
    /// Name in Ukrainian Language
    var nameUk: String?
    
    enum CodingKeys : String, CodingKey {
        case name = "name"
        case nameEn = "name:en"
        case nameRu = "name:ru"
        case nameUk = "name:uk"
    }
}
