//
//  TextTransformation.swift
//  Guidebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct TextTransformation {
    
    func cleanName(name: String) -> String {
        return name.replacingOccurrences(of: " ", with: "+").folding(options: .diacriticInsensitive, locale: .current)
    }
    
    func cleanCoords(latLong: String) -> String {
        return latLong.replacingOccurrences(of: " ", with: "")
    }
}
