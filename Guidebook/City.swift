//
//  City.swift
//  Guidebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct City: Identifiable {
    var id: UUID = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
