//
//  CategorieItem.swift
//  MoglApp
//
//  Created by Apprenant 171 on 19/07/2024.
//

import Foundation
import SwiftUI

class Categorie {
    var id: Int
    var nom: String
    var couleur: Color
    
    init(id: Int, nom: String, couleur: Color) {
        self.id = id
        self.nom = nom
        self.couleur = couleur
    }
}

