//
//  LancerRoulette.swift
//  MoglApp
//
//  Created by Apprenant 171 on 12/09/2024.
//

import Foundation
import SwiftUI

/**
 Documentation de la classe LancerRoulette
 
 Cette classe recense les méthodes qui vont intéragir avec la roulette.
 
 */
class LancerRoulette {
    /**
     Fonction pour définir la valeur du segment sur lequel la roulette va s'arrêter.
     Elle prend en compte la valeur du segment sur lequel la roulette était précédemmant arrêtée et y ajoute la nouvelle valeur sélectionnée.
     - Parameters :
     - resultat : Valeur actuelle du segment
     - numeroChoisi : Nouvelle valeur à incrémenter
     - Returns : Un nombre entier qui va définir une catégorie
     */
    static func calculResultat(resultat: Int, numeroChoisi: Int) -> Int {
        return Int((resultat + numeroChoisi)) % 6
    }
    /**
     Fonction pour définir la couleur associée au résultat.
     - Parameters :
     - resultat : Valeur actuelle du segment
     - Returns : La couleur associée au résultat
     */
    static func calculCouleur(resultat: Int) -> Color {
        switch resultat {
        case 1 :
            return .moglViolet
        case 2 :
            return .moglBlue
        case 3 :
            return .moglGreen
        case 4 :
            return .moglYellow
        case 5:
            return .moglOrange
        default :
            return .moglRed
            }
    }
}
