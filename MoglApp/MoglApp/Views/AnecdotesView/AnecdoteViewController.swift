//
//  AnecdoteViewController.swift
//  MoglApp
//
//  Created by Apprenant 167 on 09/08/2024.
//

import UIKit


extension UIColor {
    // Crée une couleur à partir d'un code hexadécimal
    convenience init(hex: String) {
        // Nettoyer la chaîne hexadécimale
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // Définir les valeurs par défaut pour les couleurs
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        // Vérifier si le code hexadécimal est bien formé
        if hex.hasPrefix("#") {
            let startIndex = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[startIndex...])
            
            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    red = CGFloat((hexNumber >> 16) & 0xFF) / 255.0
                    green = CGFloat((hexNumber >> 8) & 0xFF) / 255.0
                    blue = CGFloat(hexNumber & 0xFF) / 255.0
                }
            } else if hexColor.count == 8 { // Handle RGBA format
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    red = CGFloat((hexNumber >> 24) & 0xFF) / 255.0
                    green = CGFloat((hexNumber >> 16) & 0xFF) / 255.0
                    blue = CGFloat((hexNumber >> 8) & 0xFF) / 255.0
                    alpha = CGFloat(hexNumber & 0xFF) / 255.0
                }
            }
        }
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}


class AnecdoteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Titre "Anecdote"
        let titleLabel = UILabel()
        titleLabel.text = "Anecdote"
        titleLabel.font = UIFont(name: "Times New Roman", size: 48)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        // Question "Quelle est ta plus grande fierté ?"
        let questionLabel = UILabel()
        questionLabel.text = "Quelle est ta plus grande fierté ?"
        questionLabel.font = UIFont(name: "Times New Roman", size: 40)
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionLabel)
        
        // Emoji 💪
        let emojiLabel = UILabel()
        emojiLabel.text = "💪"
        emojiLabel.font = UIFont.systemFont(ofSize: 48)
        emojiLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emojiLabel)
        
        // Bouton "Terminer"
       /* let finishButton = UIButton(type: .system)
        finishButton.setTitle("Terminer", for: .normal)
        finishButton.isEnabled = true
        let customColor = UIColor(hex: "5423BC")
        finishButton.setTitleColor(customColor, for: .normal)
        finishButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        finishButton.backgroundColor = customColor.withAlphaComponent(0.2)
        finishButton.layer.cornerRadius = 10
        finishButton.clipsToBounds = true
        finishButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(finishButton) */
        
        
        // Contraintes
        
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            emojiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emojiLabel.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 60),
            
         /*   finishButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finishButton.topAnchor.constraint(equalTo: emojiLabel.bottomAnchor, constant: 60)
          */
        ])
        
 
    }
    
}

