//
//  TelaDoisView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 20/06/24.
//

import SwiftUI

struct PerguntaView: View {
    @State private var testeView = false
    @State private var escolhaView = false

    
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
                    Button(action: {
                        testeView = true
                    }, label: {
                        Image ("btn_no")
                    })
                    Button(action: {
                        escolhaView = true
                    }, label: {
                        Image ("btn_yes")
                    })
                }
             
                
                                
                Spacer()
                    .frame(maxHeight: 600)
                
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $testeView) { QuestionsView() }
        .navigationDestination(isPresented: $escolhaView) { LinguagemView() }

    }
}

#Preview {
    PerguntaView()
}
