//
//  ActiviteItem.swift
//  MoglApp
//
//  Created by Apprenant 171 on 19/07/2024.
//

import Foundation

class Activite {
    var id: Int
    var nom: String
    var instruction: String
    var image: String
    var seConnaissent: Bool
    
    init(id: Int, nom: String, instruction: String, image: String, seConnaissent: Bool) {
        self.id = id
        self.nom = nom
        self.instruction = instruction
        self.image = image
        self.seConnaissent = seConnaissent
    }
}

