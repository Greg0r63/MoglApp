//
//  RouletteView.swift
//  MoglApp
//
//  Created by Apprenant 171 on 29/07/2024.
//

import SwiftUI
import Charts

struct RouletteView: View {
    @StateObject var categorieVM = RouletteViewModel()
    @State var tourne: Int = 0
    @State var numeroChoisi: Int = 0
    @State var resultat: Int = 0
    @State var couleurChoisie: Color = .moglRed
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Chart {
                    ForEach(categorieVM.categorie) { portion in
                        SectorMark(angle: .value("Portion", portion.proportion),
                                   innerRadius: 60,
                                   
                                   angularInset: 1)
                            .foregroundStyle(portion.couleur)
                            .cornerRadius(5)
                    }
                }
                .frame(width: 360, height: 360)
                .rotationEffect(.degrees(Double(360 / 12 / -2)))
                .rotationEffect(.degrees(Double(tourne)))
                Button {
                    withAnimation(.spring(response: 3, dampingFraction: 1)) {
                        numeroChoisi = categorieVM.pickNumber()
                        tourne += 360 / 12 * numeroChoisi
                        resultat = categorieVM.calculResultat(resultat: resultat, numeroChoisi: numeroChoisi)
                        print(resultat)
                        couleurChoisie = categorieVM.calculCouleur(resultat: resultat)
                        print(couleurChoisie)
                    }
                } label: {
                    BouttonRouletteView()
                }
            }
            Spacer()
        }
        .background {
            LinearGradient(colors: [.moglBackgroundTop, .moglBackgroundBottom], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

    }
        
        }
    }

#Preview {
    RouletteView()
}
