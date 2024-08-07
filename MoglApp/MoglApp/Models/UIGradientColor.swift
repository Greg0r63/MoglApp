//
//  UIGradientColor.swift
//  MoglApp
//
//  Created by Apprenant 176 on 06/08/2024.
//

import UIKit

class UIGradientColor: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Définir les couleurs (exemple de couleurs prédéfinies)
        guard let color1 = UIColor(named: "GradientColor1")?.cgColor,
        let color2 = UIColor(named: "GradientColor2")?.cgColor else {
            fatalError("Assurez-vous que les noms des Color Sets sont corrects et que les couleurs existent dans l'Asset Catalog")
        }
        
        // Créer et configurer le CAGradientLayer
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color1, color2] // Ajouter les couleurs au dégradé
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0) // Point de départ (haut-gauche)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0) // Point de fin (bas-droit)
        gradientLayer.frame = self.view.bounds // Définir la taille du calque de dégradé pour qu'il couvre toute la vue
        
        // Ajouter le gradientLayer à la vue principale
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
