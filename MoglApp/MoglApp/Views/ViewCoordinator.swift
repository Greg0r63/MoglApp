//
//  ViewCoordinator.swift
//  MoglApp
//
//  Created by Apprenant 171 on 16/09/2024.
//

import SwiftUI

struct ViewCoordinator: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            TabBarControllerView()
        } else {
            SplashView(isActive: $isActive)
        }
    }
}

#Preview {
    ViewCoordinator()
}
