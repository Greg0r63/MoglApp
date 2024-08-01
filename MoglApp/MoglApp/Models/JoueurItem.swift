//
//  JoueurItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation
import SwiftUI

class Joueur {
    var id : Int
    var nom: [String]
    var couleur: Color
    var aJoue: Bool
    
    init(id: Int, nom: [String], couleur: Color, aJoue: Bool) {
        self.id = id
        self.nom = nom
        self.couleur = couleur
        self.aJoue = aJoue
    }
}
