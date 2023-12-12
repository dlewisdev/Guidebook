//
//  Attraction.swift
//  Guidebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct Attraction: Identifiable {
    var id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
