//
//  SplashView.swift
//  MoglApp
//
//  Created by Apprenant 171 on 08/08/2024.
//

import SwiftUI

/**
 Vue du splash screen qui lance une animation du logo de l'appli en zoom avant ainsi qu'une animation de chanrgement circulaire sur 3 secondes, puis bascule vers la vue ContentView
 */

struct SplashView: View {
    @Binding var isActive: Bool
    @State private var scale = 0.7
    var body: some View {
        ZStack {
            CustomColors.gradient
                .ignoresSafeArea()
            VStack(spacing: 40){
                ZStack{
                    Image("LogoMOGL")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.5)
//                        .frame (width: 230, height: 230)
                }
                .scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 3)) {
                        self.scale = 1.2
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    SplashView()
//}
