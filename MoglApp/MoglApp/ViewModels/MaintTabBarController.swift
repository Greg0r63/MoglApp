//
//  MaintTabBarController.swift
//  MoglApp
//
//  Created by Apprenant 176 on 31/07/2024.
//

import UIKit
import SwiftUI

class MaintTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstVC = UIHostingController(rootView: RouletteView())
        let secondVC = UIHostingController(rootView: NotesEtAvisView())
        let thirdVC = UIHostingController(rootView: HistoriqueView())
        
        firstVC.tabBarItem  = UITabBarItem(title: "Séléction", image: UIImage(named: "RouletteItem"), tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "Retours", image: UIImage(systemName: "pencil.circle"), tag: 1)
        thirdVC.tabBarItem = UITabBarItem(title: "Partie", image: UIImage(systemName: "person.3"), tag: 2)
        
        let tabBarList = [firstVC, secondVC, thirdVC]
        
        viewControllers = tabBarList
        
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(named: "ColorTabBarItem")
    }
}
