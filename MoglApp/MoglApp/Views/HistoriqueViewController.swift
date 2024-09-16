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
                
                // Désactive les contraintes par défaut
                backgroundImage.translatesAutoresizingMaskIntoConstraints = false
                
                // Ajoute des contraintes pour ignorer les safe areas
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
        let count = HistoriqueViewModel.shared.items.count
            
            if count == 0 {
                // Si l'historique est vide, afficher un message à la place de la table view
                let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: tableView.bounds.size.height))
                messageLabel.text = HistoriqueViewModel.shared.noHistoriqueMessage()
                messageLabel.textAlignment = .center
                messageLabel.textColor = .gray
                messageLabel.numberOfLines = 0
                messageLabel.sizeToFit()
                
                tableView.backgroundView = messageLabel
                tableView.separatorStyle = .none
            } else {
                // Si l'historique contient des éléments, on affiche la table view normalement
                tableView.backgroundView = nil
                tableView.separatorStyle = .singleLine
            }
            
            return count
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
