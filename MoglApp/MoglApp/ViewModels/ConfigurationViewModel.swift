//
//  ConfigurationViewModel.swift
//  MoglApp
//
//  Created by Oriane Batteux on 07/08/2024.
//

import SwiftUI

/**
 Documentation de `ConfigurationViewModel`.
 
 `ConfigurationViewModel` est un modèle de vue qui gère l'état de la vue `ConfigurationView`.
 
 Ce ViewModel est responsable de la gestion des options sélectionnées, de l'ajout des joueurs, et du stockage de la liste des joueurs.
 */

/*
 class ConfigurationViewModel: ObservableObject {
     @Published var selectedOption: Int = 0
     @Published var name: String = ""
     @Published var joueurs: [Joueur] = []

     func addJoueur(emojiViewModel: EmojiViewModel) {
         if !name.isEmpty, let randomEmoji = emojiViewModel.emojis.randomElement()?.emoji {
             let newJoueur = Joueur(nom: name, emoji: randomEmoji, aJoue: false)
             joueurs.append(newJoueur)
             name = ""
         }
     }
 }

 */
class ConfigurationViewModel: ObservableObject {
    /// Option sélectionnée dans la vue soit "Brisons la glace" soit, "Rapprochons nous", représentée par un entier avec la valeur réglé sur 0 (pour "Brisons la glace").
    @Published var selectedOption: Int = 0
    /// Le nom du joueur en cours de saisie.
    @Published var name: String = ""
    /// La liste des joueurs ajoutés.
    @Published var joueurs: [Joueur] = []

    /// Une liste de couleurs prédéfinies utilisées pour attribuer une couleur aléatoire aux joueurs.
    let colors: [Color] = [.purple, .red, .orange, .yellow, .green, .blue]

    /**
         Fonction qui ajoute un nouveau joueur à la liste des joueurs et qui permet de créer un joueur avec son nom et une couleur aléatoire, puis l'ajoute à la liste des joueurs. Le champ de saisie du nom est réinitialisé après l'ajout.
         
         - Note: Le joueur n'est ajouté que si le champ de nom n'est pas vide.
         */
    func addJoueur(emojiViewModel: EmojiViewModel) {
        if !name.isEmpty, let randomEmoji = emojiViewModel.emojis.randomElement()?.emoji {
            let newJoueur = Joueur(id: UUID().uuidString, nom: name, emoji: randomEmoji, aJoue: false)
            joueurs.append(newJoueur)
            name = ""  // Réinitialise le champ du nom après l'ajout
        }
    }

  /*  func addJoueur(emojiViewModel: EmojiViewModel) {
        if !name.isEmpty, let randomEmoji = emojiViewModel.emojis.randomElement()?.emoji {
            let newJoueur = Joueur(id: UUID().uuidString, nom: name, emoji: randomEmoji, aJoue: false)
            joueurs.append(newJoueur)
            name = ""
        }
    } */
}

