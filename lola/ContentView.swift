

//
//  ContentView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 19/06/24.
//

import SwiftUI

struct TelaInicialView: View {
    var body: some View {
        ZStack{
            Color.rosaClaro
            HStack {
                Image ("lings")
                Image ("logo")
            }
            .padding(.leading,-120)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TelaInicialView()
}
