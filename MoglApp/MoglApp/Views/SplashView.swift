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
    @State private var scale = 0.7
    var body: some View {
        ZStack {
            VStack(spacing: 40){
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.moglBackgroundTop)
                        .frame(width: 230, height: 230)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.moglBackgroundBottom)
                        .frame (width: 210, height: 210)
                    Image("AppIcon")
                        .resizable()
                        .frame (width: 200, height: 180)
                }
                .scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 3)) {
                        self.scale = 0.9
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
