//
//  AnecdotesViewModel.swift
//  MoglApp
//
//  Created by Apprenant 176 on 13/09/2024.
//

import Foundation
import Combine

class AnecdotesViewModel: ObservableObject {
    @Published var anecdotes: [Anecdote] = []
    var displayedAnecdotes: [Anecdote] = []
    @Published var randomAnecdote: Anecdote?
    var cancellables = Set<AnyCancellable>()
    
    func fetchAnecdotes() {
        guard let url = URL(string: "http://localhost:3000/anecdotes") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedAnecdotes = try JSONDecoder().decode([Anecdote].self, from: data)
                    DispatchQueue.main.async {
                        print("Data fetched: \(decodedAnecdotes)")
                        self.anecdotes = decodedAnecdotes
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
    
    func getRandomAnecdote() -> Anecdote? {
        let availableAnecdotes = anecdotes.filter { anecdote in
            !displayedAnecdotes.contains(where: { $0.consigne == anecdote.consigne && $0.emoji == anecdote.emoji })
        }
        
        guard !availableAnecdotes.isEmpty else {
            // Toutes les anecdotes ont été affichées, réinitialiser
            displayedAnecdotes.removeAll()
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<availableAnecdotes.count)
        let selectedAnecdote = availableAnecdotes[randomIndex]
        displayedAnecdotes.append(selectedAnecdote)
        return selectedAnecdote
    }
    
    func showRandomAnecdote() {
            if !anecdotes.isEmpty {
                let randomIndex = Int.random(in: 0..<anecdotes.count)
                randomAnecdote = anecdotes[randomIndex]
            }
        }
}
