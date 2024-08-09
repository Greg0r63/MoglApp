//
//  SelectionView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 29/07/2024.
//

import SwiftUI

struct ListeView: View {
    @ObservedObject var categorieViewModel = RouletteViewModel()
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    var body: some View {
        NavigationStack {
            ZStack {
                LazyVGrid(columns: columns) {
                    ForEach(categorieViewModel.categorie.prefix(6)) { categorie in
                        NavigationLink(destination: ConfigurationView()) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(categorie.couleur)
                                .frame(width: 150, height: 150)
                                .overlay(
                                    Text(categorie.nom)
                                        .foregroundStyle(.black)
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                )
                                .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 2)
                                )
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ListeView()
}
