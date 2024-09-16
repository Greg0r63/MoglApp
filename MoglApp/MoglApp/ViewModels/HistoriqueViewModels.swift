//
//  HistoriqueViewModels.swift
//  MoglApp
//
//  Created by Apprenant 176 on 19/07/2024.
//

import SwiftUI

class HistoriqueViewModel {
    static let shared = HistoriqueViewModel()
    @Published var items: [Historique]
    
    init(items: [Historique] = []) {
        self.items = items
    }

    func ajouterHistorique(gameName: String, datePlayed: Date, joueurs: [Joueur]) {
        let item = Historique(gameName: gameName, datePlayed: datePlayed, joueurs: joueurs)
        items.append(item)
    }
    
    func noHistoriqueMessage() -> String? {
        return items.isEmpty ? "Aucun jeu n'a encore été joué." : nil
    
    var items: [Historique]
    
    init() {
        self.items = [
            Historique(gameName: "Jeu 1", datePlayed: Date(), joueurs: [Joueur(id: UUID().uuidString, nom: "Massi", emoji: "🐼", aJoue: true)]),
            Historique(gameName: "Jeu 2", datePlayed: Date(), joueurs: [])
        ]
    }
}
