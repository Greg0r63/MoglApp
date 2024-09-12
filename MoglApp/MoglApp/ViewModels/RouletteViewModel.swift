//
//  RouletteViewModel.swift
//  MoglApp
//
//  Created by Apprenant 171 on 01/08/2024.
//

import Foundation
import SwiftUI

class RouletteViewModel: ObservableObject {
    @Published var categorie: [Categorie] = []
    init() {
        categorie = [
            Categorie(nom: "Anecdote", couleur: .moglRed, proportion: 1 / 12),
            Categorie(nom: "Jeux de mots", couleur: .moglOrange, proportion: 1 / 12),
            Categorie(nom: "Imagination", couleur: .moglYellow, proportion: 1 / 12),
            Categorie(nom: "Comment faire", couleur: .moglGreen, proportion: 1 / 12),
            Categorie(nom: "Collaboratif", couleur: .moglBlue, proportion: 1 / 12),
            Categorie(nom: "Jeux", couleur: .moglViolet, proportion: 1 / 12),
            Categorie(nom: "Anecdote", couleur: .moglRed, proportion: 1 / 12),
            Categorie(nom: "Jeux de mots", couleur: .moglOrange, proportion: 1 / 12),
            Categorie(nom: "Imagination", couleur: .moglYellow, proportion: 1 / 12),
            Categorie(nom: "Comment faire", couleur: .moglGreen, proportion: 1 / 12),
            Categorie(nom: "Collaboratif", couleur: .moglBlue, proportion: 1 / 12),
            Categorie(nom: "Jeux", couleur: .moglViolet, proportion: 1 / 12)
        ]
    }
    
    /**
     Fonction pour définir de manière semi aléatoire l'amplitude de rotation de la roulette.
     Elle doit faire au minimum 3 tours et au maximum 4 tours.
     - Returns : Un nombre entier de segments de la roulette à faire défiler
     */
    func pickNumber() -> Int {
        return Int.random(in: (categorie.count * 3)...(categorie.count * 4))
    }
    
    /**
     Fonction pour définir la valeur du segment sur lequel la roulette va s'arrêter.
     Elle prend en compte la valeur du segment sur lequel la roulette était précédemmant arrêtée et y ajoute la nouvelle valeur sélectionnée.
     - Parameters :
     - resultat : Valeur actuelle du segment
     - numeroChoisi : Nouvelle valeur à incrémenter
     - Returns : Un nombre entier qui va définir une catégorie
     */
    func calculResultat(resultat: Int, numeroChoisi: Int) -> Int {
        return Int((resultat + numeroChoisi)) % 6
    }
    
    /**
     Fonction pour définir la couleur associée au résultat.
     - Parameters :
     - resultat : Valeur actuelle du segment
     - Returns : La couleur associée au résultat
     */
    func calculCouleur(resultat: Int) -> Color {
        switch resultat {
        case 1 :
            return .moglViolet
        case 2 :
            return .moglBlue
        case 3 :
            return .moglGreen
        case 4 :
            return .moglYellow
        case 5:
            return .moglOrange
        default :
            return .moglRed
            }
    }
}
