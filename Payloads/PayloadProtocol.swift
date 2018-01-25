//
//  PayloadProtocol.swift
//  FBSnapshotTestCase
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

/// Payload packet protocol
protocol Payload: Codable {
    /// Place id in OSM
    var placeID: String{get}
    /// License string from nominatim
    var licence: String{get}
    /// OSM type W|R|N
    var osmType: OSMType {get}
    /// ID in global OSM Databse
    var osmID: String {get}
    /// Latitude of the founded object
    var latitude: String {get}
    /// Logitude of the founded object
    var longitude: String {get}
    /// Display name from OSM databse
    var displayName: String {get}
    
    /// Address object
    var address: Address? {get}
    /// Name object that contains additional data
    var nameDetails: NameDetails? {get}
    /// Extratags object
    var extraTags: ExtraTags? {get}
}
