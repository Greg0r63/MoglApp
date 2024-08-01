//
//  AvisSuggestionItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation

class AvisSuggestion {
    var id : Int
    var note: Int
    var avis: String
    var suggestion: String
    
    init(id: Int, note: Int, avis: String, suggestion: String) {
        self.id = id
        self.note = note
        self.avis = avis
        self.suggestion = suggestion
    }
}
