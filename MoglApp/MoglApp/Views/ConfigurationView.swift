//
//  ConfigurationView.swift
//  MoglApp
//
//  Created by Oriane Batteux on 29/07/2024.
//

import SwiftUI

/**
 Documentation de `ConfigurationView`.
 
 La vue `ConfigurationView` permet à l'utilisateur de configurer les options et d'ajouter des joueurs avant de commencer une session.

 Cette vue comprend des boutons segmentés pour sélectionner une option, un champ de texte pour ajouter des joueurs, et une liste des joueurs ajoutés.
 */
struct ConfigurationView: View {
    /// Le ViewModel qui gère l'état de la vue `ConfigurationView`.
    @StateObject private var viewModel = ConfigurationViewModel()
    @ObservedObject private var emojiViewModel = EmojiViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                CustomColors.gradient.ignoresSafeArea(edges: .top)
                
                VStack {
                    HStack {
                        CustomSegmentedButton(action: { viewModel.selectedOption = 0 },
                                              title: "Brisons la glace", width: 140, height: 70, isSelected: viewModel.selectedOption == 0, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 22, topLeftRadius: 8, topRightRadius: 0, bottomLeftRadius: 8, bottomRightRadius: 0, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem").opacity(0.24))
                        
                        CustomSegmentedButton(action: { viewModel.selectedOption = 1 },
                                              title: "Rapprochons nous", width: 140, height: 70, isSelected: viewModel.selectedOption == 1, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 22, topLeftRadius: 0, topRightRadius: 8, bottomLeftRadius: 0, bottomRightRadius: 8, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem").opacity(0.24))
                    }
                    .padding(.bottom, 50.0)
                    
                    Text("Ajout des participants :")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)

                    HStack {
                        TextField("Nom", text: $viewModel.name)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.words)
                            .disableAutocorrection(true)
                        
                         Button(action: {
                             viewModel.addJoueur(emojiViewModel: emojiViewModel)  // Appelle la méthode ici
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

                         
                      /*  Button(action: {
                            emojiViewModel.emojis
                          //  viewModel.addJoueur()
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
                        .padding(.trailing, 16.0) */
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                         /*   ForEach(viewModel.joueurs) { joueur in
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
                            */
                             ForEach(viewModel.joueurs) { joueur in
                                 HStack {
                                     Text(joueur.emoji)
                                         .font(.largeTitle)
                                     
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
            .onAppear {
                emojiViewModel.fetchEmojis()
            }

        }
    }
}


#Preview {
    ConfigurationView()
}
