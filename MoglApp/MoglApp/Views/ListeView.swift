//
//  SelectionView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 29/07/2024.
//

import SwiftUI

struct SelectionView: View {
    var fondDecran = LinearGradient(colors: [Color("GradientColor1"), Color("GradientColor2")], startPoint: .top, endPoint: .bottom)
    var body: some View {
        ZStack {
            fondDecran
                .ignoresSafeArea()
        }
    }
}

#Preview {
    SelectionView()
}
