//
//  TelaDoisView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 20/06/24.
//

import SwiftUI

struct TelaDoisView: View {
    var body: some View {
        
        ZStack {
            Color.rosaClaro
            VStack{
                HStack {
                    Text ("Você já sabe qual a \nlinguagem do \namor da sua\npessoa querida")
                        .foregroundColor(.vinho)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, 40) // Ajusta o padding superior conforme necessário
                    .padding(.leading, -10)
                    Image ("question")
                        .offset(x:-60, y: 80)

                }
                
                                
                Spacer()
                    .frame(maxHeight: 600)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TelaDoisView()
}
