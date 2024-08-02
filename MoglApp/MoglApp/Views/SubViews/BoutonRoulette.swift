//
//  BouttonRoulette.swift
//  MoglApp
//
//  Created by Apprenant 171 on 02/08/2024.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}

struct BouttonRoulette: View {
    @State private var isActive: Bool = false
    var body: some View {
            Circle()
                .fill(Color.moglBackgroundBottom)
                .shadow(color: .black, radius: (2), y: 1)
                .frame(width: 133)
                .overlay (
//            Image(.isActive ? "" : "PlayItem")
                    Image("PlayItem")
                )
                }
            }
#Preview {
    BouttonRoulette()
}
