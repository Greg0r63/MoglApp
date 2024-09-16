//
//  ListeDesCapitalesView.swift
//  MoglApp
//
//  Created by Massidé Dosso on 16/09/2024.
//

import SwiftUI

struct ListeDesCapitalesView: View {
    @StateObject private var viewModel = CountryViewModel()
    

    var body: some View {
        
        HStack{
            ForEach(viewModel.drapeaux, id: \.self) { drapeau in
                    Text(drapeau)
            }
        }
       

        
    }
}

#Preview {
    ListeDesCapitalesView()
}
