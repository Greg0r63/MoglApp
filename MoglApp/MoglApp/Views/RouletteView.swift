//
//  RouletteView.swift
//  MoglApp
//
//  Created by Apprenant 176 on 29/07/2024.
//

import SwiftUI
import Charts

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngle.radians)),
            y: center.y + radius * sin(CGFloat(startAngle.radians))
        )
        var path = Path()
        path.move(to: center)
        path.addLine(to: start)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.addLine(to: center)
        return path
    }
}
struct RouletteView: View {
    var resultat: Int = 0
//    let colors: [Color] = [.moglRed, .moglOrange, .moglYellow, .moglGreen, .moglBlue, .moglViolet]
    var body: some View {
        NavigationStack {
            
        }
    }
}

#Preview {
    RouletteView()
}
