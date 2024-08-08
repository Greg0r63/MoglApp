//
//  HistoriqueViewModels.swift
//  MoglApp
//
//  Created by Apprenant 176 on 19/07/2024.
//

import SwiftUI

class HistoriqueViewModel: ObservableObject {
    @Published var historique: [Historique] = []
}
