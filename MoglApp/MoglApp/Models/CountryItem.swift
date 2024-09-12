//
//  DrapeauxItem.swift
//  MoglApp
//
//  Created by Apprenant 167 on 19/07/2024.
//

import Foundation

class Country: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var capital: String
    var flag: String
    
    init(id: UUID = UUID(), name: String, flag: String, capital: String) {
        self.id = id
        self.name = name
        self.flag = flag
        self.capital = capital
    }
}
