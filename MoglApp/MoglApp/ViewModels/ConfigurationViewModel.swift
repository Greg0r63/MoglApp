//
//  ConfigurationViewModel.swift
//  MoglApp
//
//  Created by Oriane Batteux on 07/08/2024.
//

//import SwiftUI
//import Combine
//
//class ConfigurationViewModel: ObservableObject {
//    @Published var selectedOption: Int = 0
//    @Published var name: String = ""
//    @Published var joueurs: [Joueur] = []
//
//    let colors: [Color] = [.purple, .red, .orange, .yellow, .green, .blue]
//
//    func addJoueur() {
//        if !name.isEmpty {
//            let randomColor = colors.randomElement() ?? .black
//            let newJoueur = Joueur(nom: name, couleur: randomColor, aJoue: false)
//            joueurs.append(newJoueur)
//            name = ""
//        }
//    }
//}
//
