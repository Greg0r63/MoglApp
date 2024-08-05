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
    
    init(id: Int, nom: String, couleur: Color) {
        self.nom = nom
        self.couleur = couleur
    }
}

