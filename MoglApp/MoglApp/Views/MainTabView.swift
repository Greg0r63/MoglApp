//
//  MainTabView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 08/08/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ModSelectionView()
                .tabItem {
                    Label("Séléction", image: "RouletteItem")
                }
            NotesEtAvisView()
                .tabItem {
                    Label("Retours", systemImage: "pencil.circle")
                }
            ConfigurationView()
                .tabItem {
                    Label("Partie", systemImage: "person.3")
                }
            HistoriqueView()
                .tabItem {
                    Label("Historique", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    MainTabView()
}
