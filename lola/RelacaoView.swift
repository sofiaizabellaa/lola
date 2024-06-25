//
//  RelacaoView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 25/06/24.
//

import SwiftUI

struct RelacaoView: View {
    @State private var mudarView = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.rosaClaro.ignoresSafeArea()
                VStack {
                    HStack {
                        Text("Qual relação \ndeseja \nfortalecer")
                        //.font(.largeTitle.weight(.heavy))
                            .font(.system(size: 40).weight(.heavy))
                            .foregroundStyle(.vinho)
                            .offset(x:10, y:-40)
                            .padding()
                        Image("question")
                            .resizable()
                            .scaledToFit()
                            .frame(width:45, height: 60)
                            .offset(x:-70)
                    }
                    //Spacer().frame(height: 20)
                    Button(action: { 
                        mudarView = true
                    }  ) {
                        HStack(spacing:30) {
                            Image("heart")
                                .resizable()
                                .scaledToFit()
                            Text("Casal")
                                .font(.title.weight(.heavy))
                                .foregroundColor(.vermelhoDois)
                        }.offset(x:-30)
                            .frame(width: 270, height: 70)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
                            .background(.white)
                            .cornerRadius(30)
                    }
                    Spacer().frame(height: 20)
                    Button(action: {
                        mudarView = true
                    }  ) {
                        HStack(spacing:30) {
                            Image("puzzel")
                                .resizable()
                                .scaledToFit()
                                .offset(x:-5, y:-5)
                            Text("Amizade")
                                .font(.title.weight(.heavy))
                                .foregroundColor(.vermelhoDois)
                                .offset(x:-10)
                        }
                        .frame(width: 270, height: 70)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
                        .background(.white)
                        .cornerRadius(30)
                    }
                    Spacer().frame(height: 20)
                    Button(action: {
                        mudarView = true
                    }  ) {
                        HStack() {
                            Image("house")
                                .resizable()
                                .scaledToFit()
                                .offset(x:-30)
                            Text("Família")
                                .font(.title.weight(.heavy))
                                .foregroundColor(.vermelhoDois)
                                .offset(x:-5)
                        }
                        .frame(width: 270, height: 70)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
                        .background(.white)
                        .cornerRadius(30)
                    }
                }
                .offset(y:-50)
            }
            .navigationDestination(isPresented: $mudarView) { PerguntaView() }
         }
        }
    }
    
        #Preview {
            RelacaoView()
        }
    

