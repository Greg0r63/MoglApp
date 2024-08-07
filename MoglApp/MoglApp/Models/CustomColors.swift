//
//  CustomColors.swift
//  MoglApp
//
//  Created by Apprenant 176 on 05/08/2024.
//

import SwiftUI

/**
 Documentation de la structure CustomColors
 
 Cette structure permet de créer le dégradé de couleur pour le fond d'écran
 
 */
struct CustomColors {
    /// Constante pour stocker  le ColorSet de la première couleur
    static let primaryColor = Color("GradientColor1")
    /// Constante pour stocker  le ColorsSet de la seconde couleur
    static let secondaryColor = Color("GradientColor2")
    /// Création du dégradé en appelant les deux couleurs
    static let gradient = LinearGradient(
        gradient: Gradient(colors: [primaryColor, secondaryColor]),
        startPoint: .top,
        endPoint: .bottom
    )
}
