//
//  FinishButtonView.swift
//  MoglApp
//
//  Created by Apprenant 167 on 09/08/2024.
//
import SwiftUI

struct FinishButtonView: View {
    var body: some View {
       
        
        Button("Terminer") {
            
        }
        .padding(.top)
        .frame(width: 120.0, height: 55.0)
        .background(.purple)
        .opacity(0.6)
        .clipShape(.rect(cornerRadius: 12))
        
        Spacer()
        
    }
}

#Preview {
    FinishButtonView()
}
