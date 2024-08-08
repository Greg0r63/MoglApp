//
//  BouttonRoulette.swift
//  MoglApp
//
//  Created by Apprenant 171 on 02/08/2024.
//

import SwiftUI

struct BouttonRouletteView: View {
    @State private var isActive: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.moglBackgroundBottom)
                .shadow(color: .black, radius: (2), y: 1)
                .frame(width: 133)
            ZStack {
                isActive ? Image("") : Image("PlayItem")
            }
                .padding(.leading)
                .padding(.top, 5)
        }
    }
}
#Preview {
    BouttonRouletteView()
}
