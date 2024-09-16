//
//  JoueurItem.swift
//  MoglApp
//
//  Created by Oriane Batteux on 19/07/2024.
//

import Foundation
import SwiftUI

/**
 Documentation de la classe Joueur.
 
 Cette classe représente les attributs associés à chaque joueur, tels que son nom, sa couleur, et si le joueur a déjà joué ou non.
 */
class Joueur: Identifiable {
    var id : String
    /// Nom du joueur.
    var nom: String
    /// Couleur aléatoire attribuée au joueur.
    var emoji: String
    /// Indique si le joueur a déjà joué ou non.
    var aJoue: Bool
    
    /**
     Initialise une instance de `Joueur` avec des valeurs spécifiques.

     - Parameters:
       - nom: Nom du joueur.
       - couleur: Couleur aléatoire attribuée au joueur.
       - aJoue: Indique si le joueur a déjà joué ou non.
     */
    init(id: String, nom: String, emoji: String, aJoue: Bool) {
        self.id = id
        self.nom = nom
        self.emoji = emoji
        self.aJoue = aJoue
    }
}

