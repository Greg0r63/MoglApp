//
//  NotesEtAvisViewController.swift
//  MoglApp
//
//  Created by Oriane Batteux on 31/07/2024.
//

import UIKit

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
            }
        }
