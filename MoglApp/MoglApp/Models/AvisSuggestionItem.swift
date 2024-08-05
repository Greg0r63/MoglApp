//
//  AvisSuggestionItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation
/**
 Documentation de la classe AvisSuggestion.

 Cette classe représente des notes, avis et suggestion que l'utilisateur peut donner sur l'ensemble de l'application.

 */
class AvisSuggestion {
    var id : UUID = UUID()
    // Note
    var note: Int
    // Avis
    var avis: String
    // Suggestion
    var suggestion: String
    
    /**
     Initialise une instance de `AvisSuggestion` avec des valeurs spécifiques.

     - Parameters:
       - note: Note donner par l'utilisteur
       - avis: Avis donner par l'utilisateur
       - suggestion: Suggestion donner par l'utilisateur
     */
    
    init(id: UUID = UUID(), note: Int, avis: String, suggestion: String) {
        self.id = id
        self.note = note
        self.avis = avis
        self.suggestion = suggestion
    }
}
