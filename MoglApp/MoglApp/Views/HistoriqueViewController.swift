//
//  HistoriqueViewController.swift
//  MoglApp
//
//  Created by Apprenant 176 on 08/08/2024.
//

import UIKit

class HistoriqueViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()

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

        tableView.frame = self.view.bounds
        tableView.backgroundColor = UIColor.clear
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(tableView)

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HistoriqueViewModel.shared.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor.clear
        let historique = HistoriqueViewModel.shared.items[indexPath.row]
        let nomsJoueurs = historique.joueurs.map { $0.nom }
        cell.textLabel?.text = "\(historique.gameName) - \(formatDate(historique.datePlayed)) - Joueurs: \(nomsJoueurs.joined(separator: ", "))"
        return cell
    }
    
    func formatDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            return formatter.string(from: date)
        }
}
