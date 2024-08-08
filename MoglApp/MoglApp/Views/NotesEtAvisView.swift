//
//  NotesEtAvisView.swift
//  MoglApp
//
//  Created by Oriane Batteux on 29/07/2024.
//

import SwiftUI

/**
 Documentation de `NotesEtAvisView`.
 
 `NotesEtAvisView` est une vue SwiftUI qui encapsule un contrôleur de vue UIKit via `UIViewControllerRepresentable`.

 Cette vue permet d'intégrer `NotesEtAvisViewController` défini dans le storyboard NotesEtAvisStoryboard dans une interface SwiftUI.
 */
struct NotesEtAvisView: UIViewControllerRepresentable {
    
    /**
         Crée une instance de `NotesEtAvisViewController` à partir du storyboard NotesEtAvisStoryboard.

         - Parameter context: Le contexte de l'environnement SwiftUI utilisé pour créer la vue contrôleur.
         - Returns: Une instance de `NotesEtAvisViewController` ou déclenche une erreur fatale si l'initialisation échoue.
         */
    func makeUIViewController(context: Context) -> some NotesEtAvisViewController {
        guard let finalVC = UIStoryboard(name: "NotesEtAvisStoryboard", bundle: .main).instantiateViewController(withIdentifier: "NotesEtAvisViewController") as? NotesEtAvisViewController else {
            fatalError("Cannot instantiate NotesEtAvisViewController")
        }
        
        return finalVC
    }
    
    /**
         Fonction qui met à jour le contrôleur de vue UIKit en réponse aux changements dans l'environnement SwiftUI.

         - Parameters:
           - uiViewController: L'instance actuelle de `NotesEtAvisViewController`.
           - context: Le contexte de l'environnement SwiftUI utilisé pour la mise à jour.
         */
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Nothing
    }
}

#Preview {
    NotesEtAvisView()
}
