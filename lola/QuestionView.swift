//
//  TelaDoisView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 20/06/24.
//

import SwiftUI

struct PerguntaView: View {
    var body: some View {
        
        ZStack {
            Color.rosaClaro
            VStack{
                Spacer()
                    .frame(maxHeight: 40)
                HStack {
                    Spacer()
                    Text ("Você já sabe qual a \nlinguagem do \namor da sua\npessoa querida")
                        .foregroundColor(.vinho)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, 40) // Ajusta o padding superior conforme necessário
                    .padding(.leading, -10)
                    Image ("question")
                        .resizable()
                        .scaledToFit()
                        .frame(width:45, height: 60)
                        .offset(x:-70, y: 80)
                }
              
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 100)
                HStack {
                    Spacer()

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image ("btn_no")
                            .resizable()
                            .scaledToFit()
                            .frame(width:180, height: 175)
                            .offset(x:-20)

                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image ("btn_yes")
                            .resizable()
                            .scaledToFit()
                            .frame(width:180, height: 175)
                            .offset(x:-10)
                    })
                }
             
                
                Spacer()
                    .frame(maxHeight: 600)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PerguntaView()
}
