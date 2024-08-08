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
    func addJoueur() {
        if !name.isEmpty {
            let randomColor = colors.randomElement() ?? .black
            let newJoueur = Joueur(nom: name, couleur: randomColor, aJoue: false)
            joueurs.append(newJoueur)
            name = ""
        }
    }
}

