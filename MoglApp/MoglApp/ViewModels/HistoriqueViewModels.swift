//
//  HistoriqueViewModels.swift
//  MoglApp
//
//  Created by Apprenant 176 on 19/07/2024.
//

import SwiftUI

class HistoriqueViewModel {
    static let shared = HistoriqueViewModel()
    
    var items: [Historique]
    
    init() {
        self.items = [
            Historique(gameName: "Jeu 1", datePlayed: Date(), joueurs: [Joueur(nom: "Massi", couleur: .green, aJoue: true)]),
            Historique(gameName: "Jeu 2", datePlayed: Date(), joueurs: [])
        ]
    }
}
