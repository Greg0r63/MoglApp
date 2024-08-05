//
//  AvisSuggestionItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation
/**
 Documentation de la classe AvisSuggestion.
 
 Cette classe représente des notes et suggestion que l'utilisateur peut donner sur l'ensemble de l'application.
 */
class AvisSuggestion {
    var id : UUID = UUID()
    // Note
    var note: Int
    // Suggestion
    var suggestion: String
    
    /**
     Initialise une instance de `AvisSuggestion` avec des valeurs spécifiques.

     - Parameters:
       - note: Note donner par l'utilisteur
       - suggestion: Suggestion donner par l'utilisateur
     */
    init(id: UUID = UUID(), note: Int, suggestion: String) {
        self.id = id
        self.note = note
        self.suggestion = suggestion
    }
}
