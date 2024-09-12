//
//  GuessTheFlagView.swift
//  MoglApp
//
//  Created by Apprenant 167 on 05/08/2024.
//

import SwiftUI

struct GuessTheFlagView: View {
    @StateObject private var viewModel = CountryViewModel()
    
    
    var body: some View {
        ZStack {
            LinearGradientView()
            
           
            VStack(spacing: 25) {
                VStack {
                    
                    Text("Appuie sur le drapeau du pays suivant:")
                        
                        .font(.title)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                    Text(viewModel.country[viewModel.correctAnswer].name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("MOGLButton"))
                        .padding(.top)
                        .foregroundStyle(.white)
                    
                }
                
               ForEach(0..<3) { number in
                    Button(action: {
                        viewModel.flagChoosed(number)
                    }) {
                        Text(viewModel.country[number].flag)
                            .font(.system(size: 100))
                            .padding(.bottom)
                    }
                    
                }
                

                

                
                Spacer()
            }
        }
        .alert(viewModel.answerChoosed, isPresented: $viewModel.showingScore) {
            Button("Continuer", role: .none, action: viewModel.nextFlagChoosed)
        } message: {
            Text("Ton score est de \(viewModel.score)")
        }
    }
}

#Preview {
    GuessTheFlagView()
}
