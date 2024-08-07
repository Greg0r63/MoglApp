//
//  CategorieItem.swift
//  MoglApp
//
//  Created by Apprenant 171 on 19/07/2024.
//

import Foundation
import SwiftUI

class Categorie: Identifiable {
    var id = UUID()
    var nom: String
    var couleur: Color
    var proportion: Double
    
    init(nom: String, couleur: Color, proportion: Double) {
        self.nom = nom
        self.couleur = couleur
        self.proportion = proportion
    }
}

