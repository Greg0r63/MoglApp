//
//  FlagFromAPIView.swift
//  MoglApp
//
//  Created by Massidé Dosso on 13/09/2024.
//

import SwiftUI

struct GuessTheFlagView: View {
    @StateObject private var viewModel = CountryViewModel()
    var body: some View {
        ZStack {
            LinearGradientView()
            
            
        VStack {
                VStack(spacing: 25) {
                    VStack {
                        
                        Text("Appuie sur le drapeau du pays suivant:")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                        
                        if !viewModel.country.isEmpty {
                            Text(viewModel.country[viewModel.correctAnswer].name)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("MOGLButton"))
                                .padding(.top)
                                .foregroundStyle(.white)
                        } else {
                            Text("Pas d'affichage")
                        }
                        
                    }
                }
                
            if viewModel.country.count >= 3 {
                ForEach(0..<3) { number in
                    Button(action: {
                        viewModel.flagChoosed(number)
                    }) {
                        Text(viewModel.country[number].flag)
                            .font(.system(size: 100))
                            .padding(.bottom)
                    }
                    
                }
            } else {
                Text("Chargement des drapeaux")
            }

        }
        .onAppear{
            viewModel.fetchCountries()
        }
        .alert(viewModel.answerChoosed, isPresented: $viewModel.showingScore) {
            Button("Continuer", role: .none, action: viewModel.nextFlagChoosed)
        } message: {
            Text("Ton score est de \(viewModel.score)")
        }
            
        }

    }
    }


#Preview {
    GuessTheFlagView()
}
