//
//  ContinientSelectionView.swift
//  MoglApp
//
//  Created by Massidé Dosso on 15/09/2024.
//

import SwiftUI

struct ContinentSelectionView: View {
    @StateObject private var viewModel = CountryViewModel()
    
    
    
    
    var body: some View {
        NavigationView {
        ZStack {
            LinearGradientView()
            
            VStack {
                Spacer()
                Spacer()
                Text("Capitale du monde")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                Text("Choisis un continent, puis devine les capitales")
                    .font(.title)
                    .foregroundStyle(Color("MOGLButton"))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                Spacer()
                Spacer()
                Spacer()

                HStack{
                    
                    ForEach(viewModel.drapeaux, id: \.self) { drapeau in
                            Text(drapeau)
                            .font(.system(size: 75))
                    }
                }

                VStack {
                    
                    Picker("Choisis un continent", selection: $viewModel.selectedContinent) {
                        ForEach(viewModel.continents, id: \.self) { continent in
                            Text(continent.capitalized).tag(continent)
                        }
                    }
                    .padding(.top)
                    .pickerStyle(.wheel)
                    Spacer()

                }
                .onAppear {
                    viewModel.fetchCountries(for: viewModel.selectedContinent)
                }
                .onChange(of: viewModel.selectedContinent) {
                    viewModel.fetchCountries(for: viewModel.selectedContinent)
                }
                Spacer()
                Spacer()


                NavigationLink(destination: GuessTheCapitaIView()) {
                    Text("Start")
                        .foregroundColor(Color("MOGLButton"))
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                }
                
                Spacer()
                Spacer()
                
                
            }
            
        }
    }
    }
}


#Preview {
    ContinentSelectionView()
}


/*
 struct StartingView: View {
     var body: some View {
         NavigationView { // Encapsulez la vue dans un NavigationView
             VStack {
                 Spacer()

                 Button("Commencer") {
                     // L'action du bouton n'est plus nécessaire ici car NavigationLink va gérer la navigation
                 }
                 .padding(.top)
                 .frame(width: 120.0, height: 55.0)
                 .foregroundColor(Color("MOGLButton"))
                 .buttonBorderShape(.roundedRectangle)
                 .clipShape(RoundedRectangle(cornerRadius: 12))
                 
                 NavigationLink(destination: GuessTheCapitaIView()) {
                     Text("Commencer") // Navigation vers la vue GuessTheCapitaIView
                         .frame(width: 120, height: 55)
                         .foregroundColor(Color("MOGLButton"))
                         .background(Color.white)
                         .cornerRadius(12)
                         .shadow(radius: 5)
                 }

                 Spacer()
             }
         }
     }
 }

 #Preview {
     StartingView()
 }

 */
