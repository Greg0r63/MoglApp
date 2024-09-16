//
//  EmojiView.swift
//  MoglApp
//
//  Created by Oriane Batteux on 16/09/2024.
//

import SwiftUI

struct EmojiView: View {
@StateObject private var viewModelbis = EmojiViewModel()
    
    var body: some View {
        NavigationView {
         /*   List(viewModelbis.emojisArray) { post in
                VStack(alignment: .leading) {
                    Text(post.emoji)
                    
                }
            }
            .onAppear {
                viewModelbis.fetchEmojis()
            } */
            }
        }
    }


#Preview {
    EmojiView()
}
