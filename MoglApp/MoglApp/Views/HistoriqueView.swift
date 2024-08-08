//
//  HistoriqueView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 29/07/2024.
//

import SwiftUI

struct HistoriqueView: View {
    var body: some View {
        HistoriqueViewModelRepresentable()
            .ignoresSafeArea()
    }
}

struct HistoriqueViewModelRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return HistoriqueViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

#Preview {
    HistoriqueView()
}
