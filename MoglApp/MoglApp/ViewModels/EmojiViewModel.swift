//
//  EmojiViewModel.swift
//  MoglApp
//
//  Created by Oriane Batteux on 16/09/2024.
//

import Foundation
import SwiftUI
import Combine



class EmojiViewModel: ObservableObject {
    @Published var emojis: [Emoji] = []
    private var cancellable: AnyCancellable?

    init() {
        fetchEmojis()
    }

    
    func fetchEmojis() {
        guard let url = URL(string: "http://localhost:3000/emojisJoueur") else {
            print("Invalid URL")
            return
        }

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Emoji].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching emojis: \(error)")
                case .finished:
                    print("Finished fetching emojis")
                }
            }, receiveValue: { [weak self] emojis in
                print("Emojis received: \(emojis)")
                self?.emojis = emojis
            })
    }

    

 /*   func fetchEmojis() {
        guard let url = URL(string: "http://localhost:3000/emojisJoueur") else {
            print("Invalid URL")
            return
        }

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Emoji].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching emojis: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] emojis in
                self?.emojis = emojis
            })
    } */
}
