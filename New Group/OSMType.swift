//
//  OSMType.swift
//  Pods
//
//  Created by Антон Стремовский on 25.01.2018.
//

import Foundation

/// the basic components of OpenStreetMap's conceptual data model of the physical world.
/// * website: https://wiki.openstreetmap.org/wiki/Elements
/// - Way: defining linear features and area boundaries
/// - Relation: used to explain how other elements work together
/// - Node: defining points in space
public enum  OSMType: String,Codable {
    case Way = "way"
    case Relation = "relation"
    case Node = "node"
}
