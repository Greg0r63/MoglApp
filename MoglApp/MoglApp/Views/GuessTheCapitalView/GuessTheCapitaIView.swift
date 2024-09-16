//
//  GuessTheCapitaIView.swift
//  MoglApp
//
//  Created by Massidé Dosso on 15/09/2024.
//

import SwiftUI

struct GuessTheCapitaIView: View {
    @StateObject private var viewModel = CountryViewModel()
    
    var body: some View {
        ZStack {
            LinearGradientView()
            
            VStack {
                
                Spacer()
                Text("Quelle est la capitale de ce pays:")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                    .foregroundStyle(.white)
                

                

                VStack {
                    if !viewModel.country.isEmpty {
                        
                        Text(viewModel.country[viewModel.correctAnswer].name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("MOGLButton"))
                            .padding(.top)
                            .foregroundStyle(.white)
                        Text(viewModel.country[viewModel.correctAnswer].flag)
                            .font(.system(size: 70))
                    } else {
                        Text("Chargement du pays")
                    }
                }
                .padding(.vertical)
                
                Spacer()
                if viewModel.country.count >= 3 {
                    ForEach(0..<3) { number in
                        Button(action: {
                            viewModel.capitalChoosed(number)
                        }) {
                            ZStack {
                            Color.moglBackgroundBottom
                                .frame(width: 230
                                       , height: 80)
                                .clipShape(.rect(cornerRadius: 25))
                                .shadow(radius: 5)
                                // .hoverEffect(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
                            Text(viewModel.country[number].capital)
                                .font(.system(size: 25))
                                .fontWeight(.regular)
                                .foregroundColor(Color("MOGLButton"))
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                            }
                            .padding(.bottom)
                              //  .buttonBorderShape(.automatic)
                        }
                        
                    }
                } else {
                    Text("Chargement des capitales")
                }
                Spacer()
            }
            .padding(.top)
            .onAppear{
                viewModel.fetchCountries(for: viewModel.selectedContinent)
       }
            .onChange(of: viewModel.selectedContinent) {
                viewModel.fetchCountries(for: viewModel.selectedContinent)
            }
            
       .alert(viewModel.answerChoosed, isPresented: $viewModel.showingScore) {
          Button("Continuer", role: .none, action: viewModel.nextCapitalChoosed)
       } message: {
          Text("Ton score est de \(viewModel.score)")
       }
        }
    }
}
 
 #Preview {
     GuessTheCapitaIView()
 }

