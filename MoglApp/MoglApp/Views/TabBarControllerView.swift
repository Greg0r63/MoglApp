//
//  TabBarControllerView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 31/07/2024.
//

import SwiftUI

struct TabBarControllerView: UIViewControllerRepresentable { // Structure qui doit conformer au protocole UIViewCotrollerRepresentable pour pouvoir créer une vue SwiftUI avec du code UIKit
    
    func makeUIViewController(context: Context) -> some UIViewController { // 1ère méthode pour conformer au protocole
        let tabBarController = UITabBarController()
                
                let viewController1 = UIHostingController(rootView: ModSelectionView())
                viewController1.tabBarItem = UITabBarItem(title: "Sélection", image: UIImage(named: "RouletteItem"), tag: 0)
                
                let viewController2 = UIHostingController(rootView: NotesEtAvisView())
                viewController2.tabBarItem = UITabBarItem(title: "Retours", image: UIImage(systemName: "pencil.circle"), tag: 1)
                
                let viewController3 = UIHostingController(rootView: ConfigurationView())
                viewController3.tabBarItem = UITabBarItem(title: "Partie", image: UIImage(systemName: "person.3"), tag: 2)
                
                let viewController4 = UIHostingController(rootView: HistoriqueView())
                viewController4.tabBarItem = UITabBarItem(title: "Historique", image: UIImage(systemName: "list.bullet"), tag: 3)
                
                tabBarController.viewControllers = [viewController1, viewController2, viewController3, viewController4]
                
                tabBarController.tabBar.tintColor = UIColor(named: "ColorTabBarItem")
        return tabBarController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { // 2ème méthode pour conformer au protocole

    }
}

