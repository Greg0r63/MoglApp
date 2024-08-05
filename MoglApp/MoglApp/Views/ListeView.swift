//
//  SelectionView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 29/07/2024.
//

import SwiftUI

struct SelectionView: View {
    @State var selectedoption: Int = 0
    var body: some View {
        ZStack {
            CustomColors.gradient
                .ignoresSafeArea()
            HStack(spacing: 0) {
                CustomSegmentedButton(action: {selectedoption = 0}, title: "Roulette", width: 120, height: 24, isSelected: selectedoption == 0, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 20, topLeftRadius: 5, topRightRadius: 0, bottomLeftRadius: 5, bottomRightRadius: 0, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem"))
                CustomSegmentedButton(action: {selectedoption = 1}, title: "Liste", width: 120, height: 24, isSelected: selectedoption == 1, selectedTextColor: .white, unselectedTextColor: Color("ColorTabBarItem"), taillePolice: 20, topLeftRadius: 0, topRightRadius: 5, bottomLeftRadius: 0, bottomRightRadius: 5, selectedColor: Color("ColorTabBarItem"), unselectedColor: Color("ColorTabBarItem"))
            }
        }
    }
}

#Preview {
    SelectionView()
}
