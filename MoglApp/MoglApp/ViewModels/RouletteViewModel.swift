//
//  RouletteViewModel.swift
//  MoglApp
//
//  Created by Apprenant 171 on 01/08/2024.
//

import Foundation
import SwiftUI

/**
 Documentation de la classe RouletteViewModel.
 
 Cette classe représente la liste des segment avec des initialisateurs spécifiques.
 Elle peut-être observée pour créer la roulette dans RouletteView.
 
 Utilisez cette classe pour gérer le nombre de segments, la catégorie et la couleur qui leur sont associées, ainsi que l'espace qu'il prendront sur la roulette.
 */
class RouletteViewModel: ObservableObject {
    @Published var categorie: [Categorie] = []
 /*   init() {
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
    } */
    /**
     Fonction pour définir de manière semi aléatoire l'amplitude de rotation de la roulette.
     Elle doit faire au minimum 3 tours et au maximum 4 tours.
     - Returns : Un nombre entier de segments de la roulette à faire défiler
     */
    func pickNumber() -> Int {
        return Int.random(in: (categorie.count * 3)...(categorie.count * 4))
    }
    /**
     Fonction pour récupérer les data du tableau qui se trouve dans le fichier JSON`
     */
    func fetchCat() {
        guard let url = URL(string: "http://localhost:3000/categorie") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedCat = try JSONDecoder().decode([Categorie].self, from: data)
                    DispatchQueue.main.async {
                        print ("fetched worked")
                        self.categorie = decodedCat
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
}
