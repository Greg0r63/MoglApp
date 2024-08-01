//
//  Item.swift
//  MoglApp
//
//  Created by Apprenant 176 on 01/08/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
