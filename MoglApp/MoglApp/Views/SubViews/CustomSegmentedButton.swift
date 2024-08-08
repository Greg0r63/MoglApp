//
//  SelectionModView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 02/08/2024.
//

import SwiftUI

struct CustomSegmentedButton: View {
    let action: ()-> Void
    let title: String
    let width: CGFloat
    let height: CGFloat
    let isSelected: Bool
    let selectedTextColor: Color
    let unselectedTextColor: Color
    let taillePolice: CGFloat
    let topLeftRadius: CGFloat
    let topRightRadius: CGFloat
    let bottomLeftRadius: CGFloat
    let bottomRightRadius: CGFloat
    let selectedColor: Color
    let unselectedColor: Color
    var body: some View {
        Button(action: action) {
         Text(title)
                .frame(width: width, height: height)
                .foregroundStyle(isSelected ? selectedTextColor: unselectedTextColor)
                .font(.system(size: taillePolice, weight: .bold))
                .padding()
                .background(UnevenRoundedRectangle(
                    topLeadingRadius: topLeftRadius,
                    bottomLeadingRadius: bottomLeftRadius,
                    bottomTrailingRadius: bottomRightRadius,
                    topTrailingRadius: topRightRadius
                )
                    .tint(isSelected ? selectedColor : unselectedColor.opacity(0.25))
                )
        }
    }
}
