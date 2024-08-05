//
//  RouletteViewModel.swift
//  MoglApp
//
//  Created by Apprenant 171 on 01/08/2024.
//

import Foundation
import SwiftUI

class CategorieViewModel: ObservableObject {
    @Published var categorie: [Categorie] = []
    init() {
        categorie = [
            Categorie(id: 1, nom: "Anecdote", couleur: .moglRed),
            Categorie(id: 2, nom: "Jeux de mots", couleur: .moglOrange),
            Categorie(id: 3, nom: "Imagination", couleur: .moglYellow),
            Categorie(id: 4, nom: "Comment faire", couleur: .moglGreen),
            Categorie(id: 5, nom: "Collaboratif", couleur: .moglBlue),
            Categorie(id: 6, nom: "Jeux", couleur: .moglViolet),
            Categorie(id: 7, nom: "Anecdote", couleur: .moglRed),
            Categorie(id: 8, nom: "Jeux de mots", couleur: .moglOrange),
            Categorie(id: 9, nom: "Imagination", couleur: .moglYellow),
            Categorie(id: 10, nom: "Comment faire", couleur: .moglGreen),
            Categorie(id: 11, nom: "Collaboratif", couleur: .moglBlue),
            Categorie(id: 12, nom: "Jeux", couleur: .moglViolet)
        ]
    }
}
