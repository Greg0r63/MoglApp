//
//  Historique.swift
//  MoglApp
//
//  Created by Apprenant 176 on 19/07/2024.
//

import Foundation

/**
 Documentation de la classe Historique.

 Cette classe représente un Historique de jeux que l'utilisateur peut consulter

 */

class Historique {
    var id = UUID()
    // Nom du jeu
    var gameName: String
    // Date jouée
    var datePlayed: Date
    // Liste de joueurs
    var joueurs: [Joueur]
    
    /**
     Initialise une instance de `Historique` avec des valeurs spécifiques.

     - Parameters:
       - gameName: Le nom du jeu
       - datePlayed: La date à laquelle le jeu à été joué
       - joueurs: La liste des joueurs ayant joué au jeu
     */
    
    init(id: UUID = UUID(), gameName: String, datePlayed: Date, joueurs: [Joueur]) {
        self.id = id
        self.gameName = gameName
        self.datePlayed = datePlayed
        self.joueurs = joueurs
    }
}
