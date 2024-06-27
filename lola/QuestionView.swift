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
                    Text ("Você já sabe a \nlinguagem do \namor da sua\npessoa querida")
                        .font(.custom("Inter-ExtraBold", size: 36))
                        .foregroundColor(.vinho)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, 40)
                        .padding()
                    Image ("question")
                        .resizable()
                        .scaledToFit()
                        .frame(width:45, height: 60)
                        .offset(x:-30, y: 80)
                }
              
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 70)
                HStack {
                    Button(action: {
                        testeView = true
                    }, label: {
                        Image ("btn_no")
                            .resizable()
                            .scaledToFit()
                            .frame(width:180, height: 175)
                            .offset(x:-20)
                    })
                    Button(action: {
                        escolhaView = true
                    }, label: {
                        Image ("btn_yes")
                            .resizable()
                            .scaledToFit()
                            .frame(width:180, height: 175)
                            .offset(x:-10)
                    })
    
                }.offset(x:14)
             
                
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
