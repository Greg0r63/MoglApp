//
//  Anecdotes.swift
//  MoglApp
//
//  Created by Apprenant 176 on 13/09/2024.
//

import Foundation

class Anecdote: Codable, Identifiable {
    var id: String
    var consigne: String
    var emoji: String
    
    init(id: String, consigne: String, emoji: String) {
        self.id = id
        self.consigne = consigne
        self.emoji = emoji
    }
}
