//
//  MorpionItem.swift
//  MoglApp
//
//  Created by Apprenant 167 on 19/07/2024.
//

import Foundation

class Morpion: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    
    init(id: UUID = UUID(), name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}
