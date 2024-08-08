//
//  NotesEtAvisViewController.swift
//  MoglApp
//
//  Created by Oriane Batteux on 31/07/2024.
//

import UIKit
import SwiftUI

class NotesEtAvisViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var notesEtAvisLabel: UILabel!
    @IBOutlet weak var toucherPourNoterLabel: UILabel!
    @IBOutlet weak var oneStarImageView: UIImageView!
    @IBOutlet weak var twoStarImageView: UIImageView!
    @IBOutlet weak var threeStarImageView: UIImageView!
    @IBOutlet weak var fourStarImageView: UIImageView!
    @IBOutlet weak var fiveStarImageView: UIImageView!
    @IBOutlet weak var redigerUnAvisLabel: UILabel!
    @IBOutlet weak var avisTextView: UITextView!
    @IBOutlet weak var envoyerButton: UIButton!
    
    var numberOfStar = 0
    
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
    
    @IBAction func touchDownEnvoyerButton(_ sender: Any) {
        envoyerButton.backgroundColor = UIColor.gray
        var suggestion = AvisSuggestion(note: numberOfStar, suggestion: avisTextView.text)
    }
    
    @objc func starTapped(_ sender: UITapGestureRecognizer) {
        if let tappedStar = sender.view?.tag {
            updateStarRating(selectedStar: tappedStar)
        }
    }
    
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
