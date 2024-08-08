//
//  AvisSuggestionItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation

/**
 Documentation de la classe AvisSuggestion.
 
 Cette classe représente des notes et avis/suggestions que l'utilisateur peut donner sur l'ensemble de l'application.
 */
class AvisSuggestion {
    var id : UUID = UUID()
    /// Note donnée par l'utilisateur.
    var note: Int
    /// Avis/suggestions données par l'utilisateur.
    var avis: String
    
    /**
     Initialise une instance de `AvisSuggestion` avec des valeurs spécifiques.

     - Parameters:
       - note: Note donnée par l'utilisateur.
       - avis: Avis/suggestions donnés par l'utilisateur.
     */
    init(id: UUID = UUID(), note: Int, avis: String) {
        self.id = id
        self.note = note
        self.avis = avis
    }
}
