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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avisTextView.delegate = self
        
        let starImageViewsArray = [oneStarImageView, twoStarImageView, threeStarImageView, fourStarImageView, fiveStarImageView]
        for (index, imageView) in starImageViewsArray.enumerated() {
            imageView?.tag = index + 1
            imageView?.isUserInteractionEnabled = true
            let starTapGesture = UITapGestureRecognizer(target: self, action: #selector(starTapped(_:)))
            imageView?.addGestureRecognizer(starTapGesture)
        }
        updateStarRating(selectedStar: 0)
        
        setupButtonAppearance()
        
        
        
    }
    
    @objc func starTapped(_ sender: UITapGestureRecognizer) {
        if let tappedStar = sender.view?.tag {
            updateStarRating(selectedStar: tappedStar)
        }
    }
    func updateStarRating(selectedStar: Int) {
        let starImageViews = [oneStarImageView, twoStarImageView, threeStarImageView, fourStarImageView, fiveStarImageView]
        for (index, imageView) in starImageViews.enumerated() {
            if index < selectedStar {
                imageView?.image = UIImage(systemName: "star.fill")
            } else {
                imageView?.image = UIImage(systemName: "star")
            }
        }
    }
    
    func setupButtonAppearance() {
            envoyerButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
            envoyerButton.addTarget(self, action: #selector(buttonTouchUp), for: .touchUpInside)
            envoyerButton.addTarget(self, action: #selector(buttonTouchUp), for: .touchUpOutside)
        }
        @objc func buttonTouchDown() {
            envoyerButton.backgroundColor = UIColor.purple
            envoyerButton.setTitleColor(UIColor.white, for: .normal)
        }
        @objc func buttonTouchUp() {
            envoyerButton.backgroundColor = UIColor.clear
            envoyerButton.setTitleColor(UIColor.black, for: .normal)
        }
    
    
    
}
