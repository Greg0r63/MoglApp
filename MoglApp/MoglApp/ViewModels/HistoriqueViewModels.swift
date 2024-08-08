//
//  HistoriqueViewModels.swift
//  MoglApp
//
//  Created by Apprenant 176 on 19/07/2024.
//

import SwiftUI

class HistoriqueViewModel: ObservableObject {
    // Instance partagée (singleton)
    static let shared = HistoriqueViewModel()
    
    // Tableau de données
    private(set) var items: [Historique]
    
    // Initialisateur privé
    private init() {
        self.items = [
            Historique(gameName: "Jeu 1", datePlayed: Date(), joueurs: [Joueur(nom: "Massi", couleur: .green, aJoue: true)]),
            Historique(gameName: "Jeu 2", datePlayed: Date(), joueurs: [])
        ]
    }
}
