//
//  DrapeauxViewModel.swift
//  MoglApp
//
//  Created by Apprenant 167 on 05/08/2024.
//

import Foundation


class CountryViewModel: ObservableObject {
    @Published var country: [Country] = []
    @Published var correctAnswer: Int = 0
    @Published var showingScore: Bool = false
    @Published var answerChoosed: String = ""
    @Published var score = 0
    @Published var numberOfRounds = 0
    @Published var showingFinalScore = false
    @Published var wrongAnswer = ""
    @Published var maxOfRound = 1
    @Published var selectedContinent: String = "All"
    
    var continents: [String] = [
        "All", "Africa", "Asia", "Europe", "North America", "South America", "Oceania"
    ]
    var drapeaux = ["🇪🇺","🇺🇳", "🇵🇸","🇫🇷"]
    
    
    private let baseURL = "http://10.80.55.116:3000/country"

    func fetchCountries(for continent: String = "All") {
        var urlSelectedContinent = baseURL
  
        if  continent != "All" {
            urlSelectedContinent = baseURL + "?continent=\(continent)"
        }
        
        guard let url = URL(string: urlSelectedContinent) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedCountries = try JSONDecoder().decode([Country].self, from: data)
                    DispatchQueue.main.async {
                        self.country = decodedCountries
                        self.country.shuffle()

                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
            self.correctAnswer = Int.random(in: 0...2)
        }.resume()
        
    }

      func flagChoosed(_ number: Int) {
          if number == correctAnswer {
              answerChoosed = "Bonne réponse 🥳"
              score += 1
          } else {
              answerChoosed = "Mauvaise réponse 🫨 C'était le drapeau de: \(country[correctAnswer].flag)"
          }
          showingScore = true
      }
    
      func nextFlagChoosed() {
          if numberOfRounds < 4 {
              country.shuffle()
              correctAnswer = Int.random(in: 0...2)
              numberOfRounds += 1
          } else {
              showingFinalScore = true
              print("Jeu terminé")
          }
      }
      
    func capitalChoosed(_ number: Int) {
        if number == correctAnswer {
            answerChoosed = "Bonne réponse 🥳"
            score += 1
        } else {
            answerChoosed = "Mauvaise réponse 🫨 C'était \(country[correctAnswer].capital)"
        }
        showingScore = true
    }
      
      func nextCapitalChoosed() {
          if numberOfRounds < 4 {
              country.shuffle()
              correctAnswer = Int.random(in: 0...2)
              numberOfRounds += 1
          } else {
             showingFinalScore = true
              print("stop")
          }
      }
    
    
    // TEST EN SOLID
    

}




