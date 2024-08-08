//
//  ConfigurationView.swift
//  MoglApp
//
//  Created by Oriane Batteux on 29/07/2024.
//

import SwiftUI

struct ConfigurationView: View {
    @State var selectedOption: Int = 0
    @State private var name: String = ""
    @State private var joueurs: [Joueur] = []
    
    let colors: [Color] = [.purple, .red, .orange, .yellow, .green, .blue]

    var body: some View {
        NavigationView {
            ZStack {
                CustomColors.gradient.ignoresSafeArea(edges: .top)
                
                VStack {
                    HStack {
                        CustomSegmentedButton(action: { selectedOption = 0 },
                                              title: "Brisons la glace", width: 140, height: 70, isSelected: selectedOption == 0, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 22, topLeftRadius: 7, topRightRadius: 0, bottomLeftRadius: 7, bottomRightRadius: 0, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem").opacity(0.24))
                        
                        CustomSegmentedButton(action: { selectedOption = 1 },
                                              title: "Rapprochons nous", width: 140, height: 70, isSelected: selectedOption == 1, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 22, topLeftRadius: 0, topRightRadius: 7, bottomLeftRadius: 0, bottomRightRadius: 7, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem").opacity(0.24))
                    }
                    .padding(.bottom, 50.0)
                    
                    Text("Ajout des participants :")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)

                    HStack {
                        TextField("Nom", text: $name)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.words)
                            .disableAutocorrection(true)
                        
                        Button(action: {
                            addJoueur()
                        }) {
                            Text("Ajouter")
                                .font(.title3)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Color("ColorTabBarItem").opacity(0.24))
                                .foregroundColor(Color("ColorTabBarItem"))
                                .cornerRadius(8)
                        }
                        .padding(.trailing, 16.0)
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(joueurs) { joueur in
                                HStack {
                                    Circle()
                                        .fill(joueur.couleur)
                                        .frame(width: 40, height: 40)
                                    
                                    Text(joueur.nom)
                                        .padding(.leading, 8)
                                        .font(.title3)
                                }
                                .padding(.vertical, 4)
                            }
                        }
                    }
                    .padding(.top, 20)
                    
                    NavigationLink(destination: RouletteView()) {
                        Text("Commencer")
                            .font(.title3)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color("ColorTabBarItem").opacity(0.24))
                            .foregroundColor(Color("ColorTabBarItem"))
                            .cornerRadius(8)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                }
                .padding(.horizontal, 16)
                .navigationBarHidden(true)
            }
        }
    }
    
    private func addJoueur() {
        if !name.isEmpty {
            let randomColor = colors.randomElement() ?? .black
            let newJoueur = Joueur(nom: name, couleur: randomColor, aJoue: false)
            joueurs.append(newJoueur)
            name = ""
        }
    }
}

#Preview {
    ConfigurationView()
}
