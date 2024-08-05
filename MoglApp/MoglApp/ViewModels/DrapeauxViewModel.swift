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
    
    init() {
        drapeaux = [
            Drapeaux(name: "Jamaica", nomDeDrapeau: "Jamaica"),
            Drapeaux(name: "Palestine", nomDeDrapeau: "Palestine"),
            Drapeaux(name: "Nigeria", nomDeDrapeau: "Nigeria"),
        ].shuffled()
        
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagChoosed(_ number: Int) {
        if number == correctAnswer {
            answerChoosed = "Bonne réponse"
        } else {
            answerChoosed = "Mauvaise réponse"
        }
        showingScore = true
    }
    
    func nextFlagChoosed() {
        drapeaux.shuffle()
    }
    
}


