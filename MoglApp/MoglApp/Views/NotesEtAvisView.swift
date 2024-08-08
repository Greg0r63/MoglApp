//
//  NotesEtAvisView.swift
//  MoglApp
//
//  Created by Oriane Batteux on 29/07/2024.
//

import SwiftUI

struct NotesEtAvisView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some NotesEtAvisViewController {
        guard let finalVC = UIStoryboard(name: "NotesEtAvisStoryboard", bundle: .main).instantiateViewController(withIdentifier: "NotesEtAvisViewController") as? NotesEtAvisViewController else {
            fatalError("Cannot instanciate NotesEtAvisViewController")
        }
        return finalVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Nothing
    }
}

#Preview {
    NotesEtAvisView()
}
