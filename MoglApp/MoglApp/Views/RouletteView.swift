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
                    Image("PicItem")
                        .offset(x: 30, y: -210)
                }
 //               .offset(y: 50)
//                Spacer()
                RouletteViewControllerRepresentable()

        }
        }
    }
struct RouletteViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyBoard = UIStoryboard(name: "RouletteStoryBoard", bundle: .main)
        guard let rouletteVC = storyBoard.instantiateViewController(withIdentifier: "RouletteViewController") as? RouletteViewController else {
            fatalError("RouletteVC n'a pas pu être instancié")
        }
        rouletteVC.view.backgroundColor = .clear
        return rouletteVC
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
struct RouletteTest: View {
    var body: some View {
        RouletteViewControllerRepresentable()
    }
}

#Preview {
    RouletteView()
}
