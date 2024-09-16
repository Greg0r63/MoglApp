//
//  CategorieItem.swift
//  MoglApp
//
//  Created by Apprenant 171 on 19/07/2024.
//

import Foundation
import SwiftUI

class Categorie: Identifiable, Codable {
    var id: String
    var nom: String
    var color: String
    var proportion: Double
    var couleur: Color {
            switch color.lowercased() {
            case "red":
                return .moglRed
            case "orange":
                return .moglOrange
            case "yellow":
                return .moglYellow
            case "green":
                return .moglGreen
            case "blue":
                return .moglBlue
            case "purple":
                return .moglViolet
            default:
                return .black // Valeur par défaut si la couleur est inconnue
            }
        }
    
    init(id: String, nom: String, couleur: String, proportion: Double) {
        self.id = id
        self.nom = nom
        self.color = couleur
        self.proportion = proportion
    }
}

