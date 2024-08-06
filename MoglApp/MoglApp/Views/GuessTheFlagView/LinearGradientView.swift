//
//  LinearGradientView.swift
//  MoglApp
//
//  Created by Apprenant 167 on 05/08/2024.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            let r = Double((hexNumber & 0xff0000) >> 16) / 255
            let g = Double((hexNumber & 0x00ff00) >> 8) / 255
            let b = Double(hexNumber & 0x0000ff) / 255
            self.init(red: r, green: g, blue: b)
        } else {
            self.init(.black) // Default color if hex string is invalid
        }
    }
}

struct LinearGradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(hex: "4A90E2"), Color(hex: "9867CC").opacity(0.61) ], startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LinearGradientView()
}
