//
//  AnecdoteView.swift
//  MoglApp
//
//  Created by Apprenant 167 on 09/08/2024.
//

import SwiftUI

struct AnecdoteView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> AnecdoteViewController {
        return AnecdoteViewController()
    }
    
    func updateUIViewController(_ uiViewController: AnecdoteViewController, context: Context) {
        // Mettre à jour le UIViewController si nécessaire
    }
}

struct AnecdoteSwiftUIView: View {
    var body: some View {
        
        ZStack {
            LinearGradientView()
               
            VStack {
                AnecdoteView()
                   
 
                FinishButtonView()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    AnecdoteSwiftUIView()
}
