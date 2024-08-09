//
//  NotesEtAvisViewController.swift
//  MoglApp
//
//  Created by Oriane Batteux on 31/07/2024.
//

import UIKit
import SwiftUI

/**
 Documentation de `NotesEtAvisViewController`.
 
 Le `NotesEtAvisViewController` gère l'interface utilisateur pour permettre aux utilisateurs de donner une note et rédiger un avis.

 Cette classe implémente les interactions utilisateur avec une interface de notation par étoiles et un champ de texte pour la rédaction d'avis.
 */
class NotesEtAvisViewController: UIViewController, UITextViewDelegate {
    /// Titre "Notes et Avis".
    @IBOutlet weak var notesEtAvisLabel: UILabel!
    /// Phrase "Toucher pour noter :".
    @IBOutlet weak var toucherPourNoterLabel: UILabel!
    /// ImageView représentant la première étoile.
    @IBOutlet weak var oneStarImageView: UIImageView!
    /// ImageView représentant la deuxième étoile.
    @IBOutlet weak var twoStarImageView: UIImageView!
    /// ImageView représentant la troisième étoile.
    @IBOutlet weak var threeStarImageView: UIImageView!
    /// ImageView représentant la quatrième étoile.
    @IBOutlet weak var fourStarImageView: UIImageView!
    /// ImageView représentant la cinquième étoile.
    @IBOutlet weak var fiveStarImageView: UIImageView!
    /// Phrase "Rédiger un avis :".
    @IBOutlet weak var redigerUnAvisLabel: UILabel!
    /// Champ de texte pour que l'utilisateur puisse rédiger un avis.
    @IBOutlet weak var avisTextView: UITextView!
    /// Bouton pour envoyer la note et l'avis.
    @IBOutlet weak var envoyerButton: UIButton!
    
    /// Le nombre d'étoiles sélectionnées par l'utilisateur initialisé à 0.
    var numberOfStar = 0
    
    /// Fonction appelée lorsque la vue est chargée en mémoire.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Créer un UIImageView avec l'image de fond
                let backgroundImage = UIImageView(frame: view.bounds)
                backgroundImage.image = UIImage(named: "ColorImage")
                backgroundImage.contentMode = .scaleAspectFill

                // Ajouter l'image de fond
                view.addSubview(backgroundImage)
                view.sendSubviewToBack(backgroundImage)
                
                // Désactiver les auto-constraints par défaut
                backgroundImage.translatesAutoresizingMaskIntoConstraints = false
                
                // Ajouter des contraintes pour ignorer les safe areas
                NSLayoutConstraint.activate([
                    backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
                    backgroundImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                ])
        
        avisTextView.delegate = self
        
        let starImageViewsArray = [oneStarImageView, twoStarImageView, threeStarImageView, fourStarImageView, fiveStarImageView]
        for (index, imageView) in starImageViewsArray.enumerated() {
            imageView?.tag = index + 1
            imageView?.isUserInteractionEnabled = true
            let starTapGesture = UITapGestureRecognizer(target: self, action: #selector(starTapped(_:)))
            imageView?.addGestureRecognizer(starTapGesture)
        }
        updateStarRating(selectedStar: 0)
    }
    
    /**
         Fonction appelée lorsque le bouton "Envoyer" est pressé.
         
         - Parameter sender: L'objet qui a déclenché l'action.
         */
    @IBAction func touchDownEnvoyerButton(_ sender: Any) {
        envoyerButton.backgroundColor = UIColor.gray
        _ = AvisSuggestion(note: numberOfStar, avis: avisTextView.text)
    }
    
    /**
     Fonction appelée lorsque l'utilisateur touche une étoile pour donner une note.
         
         - Parameter sender: Le geste de tap détecté.
         */
    @objc func starTapped(_ sender: UITapGestureRecognizer) {
        if let tappedStar = sender.view?.tag {
            updateStarRating(selectedStar: tappedStar)
        }
    }
    
    /**
         Fonction qui met à jour l'affichage des étoiles en fonction des étoiles sélectionnées.
         
         - Parameter selectedStar: Le nombre d'étoiles sélectionnées.
         */
    func updateStarRating(selectedStar: Int) {
        let starImageViews = [oneStarImageView, twoStarImageView, threeStarImageView, fourStarImageView, fiveStarImageView]
        numberOfStar = selectedStar
        for (index, imageView) in starImageViews.enumerated() {
            if index < selectedStar {
                imageView?.image = UIImage(systemName: "star.fill")
            } else {
                imageView?.image = UIImage(systemName: "star")
            }
        }
    }

}
