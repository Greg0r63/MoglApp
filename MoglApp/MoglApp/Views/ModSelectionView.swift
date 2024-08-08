//
//  ModSelectionView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 05/08/2024.
//

import SwiftUI

struct ModSelectionView: View {
    @State private var selectedView: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColors.gradient
                VStack {
                    HStack(spacing: 0) {
                        CustomSegmentedButton(
                            action: { selectedView = 0 },
                            title: "Roulette",
                            width: 120,
                            height: 24,
                            isSelected: selectedView == 0,
                            selectedTextColor: .white,
                            unselectedTextColor: Color("ColorTabBarItem"),
                            taillePolice: 20,
                            topLeftRadius: 5,
                            topRightRadius: 0,
                            bottomLeftRadius: 5,
                            bottomRightRadius: 0,
                            selectedColor: Color("ColorTabBarItem"),
                            unselectedColor: Color("ColorTabBarItem")
                        )
                        CustomSegmentedButton(
                            action: { selectedView = 1 },
                            title: "Liste",
                            width: 120,
                            height: 24,
                            isSelected: selectedView == 1,
                            selectedTextColor: .white,
                            unselectedTextColor: Color("ColorTabBarItem"),
                            taillePolice: 20,
                            topLeftRadius: 0,
                            topRightRadius: 5,
                            bottomLeftRadius: 0,
                            bottomRightRadius: 5,
                            selectedColor: Color("ColorTabBarItem"),
                            unselectedColor: Color("ColorTabBarItem")
                        )
                    }
                    .padding()
                    .frame(height: 60) // Fix the height here
                    
                    if selectedView == 0 {
                        RouletteView()
                    } else {
                        ListeView()
                    }
                }
            }
        }
        .background(CustomColors.gradient)
    }
}

#Preview {
    ModSelectionView()
}
