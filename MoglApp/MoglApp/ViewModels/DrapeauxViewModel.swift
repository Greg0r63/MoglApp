//
//  DrapeauxViewModel.swift
//  MoglApp
//
//  Created by Apprenant 167 on 05/08/2024.
//

import Foundation

class DrapeauxViewModel: ObservableObject {
    @Published var drapeaux: [Drapeaux]
    @Published var correctAnswer: Int
    @Published var showingScore: Bool = false
    @Published var answerChoosed: String = ""
    @Published var score = 0
    @Published var numberOfRounds = 0
    @Published var showingFinalScore = false
   // @Published var wrongAnswer = ""
    
    
    init() {
        drapeaux = [
            Drapeaux(name: "Jamaica", nomDeDrapeau: "jamaica"),
            Drapeaux(name: "Palestine", nomDeDrapeau: "palestine"),
            Drapeaux(name: "Nigeria", nomDeDrapeau: "nigeria"),
        ].shuffled()
        
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagChoosed(_ number: Int) {
        if number == correctAnswer {
            answerChoosed = "Bonne réponse 🥳"
            score += 1
        } else {
            answerChoosed = "Mauvaise réponse 🫨"
        }
        showingScore = true
    }
    
    func nextFlagChoosed() {
        if numberOfRounds <= 3 {
            drapeaux.shuffle()
            numberOfRounds += 1
        } else {
            print("stop")
        }
    }
}


