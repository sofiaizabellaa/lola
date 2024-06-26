//
//  LinguagemView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 25/06/24.
//

import SwiftUI

struct LinguagemView: View {
    
    @State var lingPred: Int = 7
    @State private var atView = false
    
      var body: some View {
        ZStack {
          Color.rosaClaro.ignoresSafeArea()
          VStack {
              HStack {
                  Text("Escolha a \nlinguagem do amor \nda sua pessoa \namada")
                      .font(.custom("Inter-ExtraBold", size: 32))
                  .font(.system(size: 32).weight(.heavy))
                  .foregroundStyle(.vinho)
                  .offset(x:20, y:10)
              .padding()
                  Image ("double_points")
                      .resizable()
                      .scaledToFit()
                      .frame(width:45, height: 40)
                      .offset(x:-205,y:68)
              }
              
            Spacer().frame(height: 20)
              // 0 = atos, 1 = tempo, 2 = toques, 3 = palavras, 4 = presentes
            Button(action: { lingPred = 2
                           atView = true }  ) {
              HStack {
                Image("toque")
                  .resizable()
                  .scaledToFit()
                  .offset(x:-15)
                Text("Toque Físico")
                      .font(.custom("Inter-ExtraBold", size: 24))
                  .font(.title2.weight(.heavy))
                  .foregroundColor(.vermelhoDois)
              }
              .frame(width: 270, height: 70)
              .padding()
              .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
              .background(.white)
              .cornerRadius(30)
                }
            Spacer().frame(height: 10)
            Button(action: { lingPred = 0
                atView = true}  ) {
              HStack() {
                Image("atos")
                  .resizable()
                  .scaledToFit()
                  .offset(x:-35)
                Text("Atos de\nServiço")
                  .font(.title2.weight(.heavy))
                  .font(.custom("Inter-ExtraBold", size: 24))
                  .foregroundColor(.vermelhoDois)
                  .offset(x:-20)
              }
              .frame(width: 270, height: 70)
              .padding()
              .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
              .background(.white)
              .cornerRadius(30)
                }
            Spacer().frame(height: 10)
            Button(action: { lingPred = 3
                atView = true}  ) {
              HStack() {
                Image("palavras")
                  .resizable()
                  .scaledToFit()
                  .offset(x:-20)
                Text("Palavras de\nAfirmação")
                  .font(.title2.weight(.heavy))
                  .font(.custom("Inter-ExtraBold", size: 24))
                  .foregroundColor(.vermelhoDois)
                  .offset(x:-10)
              }
              .frame(width: 270, height: 70)
              .padding()
              .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
              .background(.white)
              .cornerRadius(30)
                }
            Spacer().frame(height: 10)
            Button(action: { lingPred = 4
                atView = true}  ) {
              HStack {
                Image("presentes")
                  .resizable()
                  .scaledToFit()
                  .offset(x:-20)
                Text("Presentes")
                  .font(.custom("Inter-ExtraBold", size: 24))
                  .font(.title2.weight(.heavy))
                  .foregroundColor(.vermelhoDois)
                  .offset(x:-10)
              }
              .frame(width: 270, height: 70)
              .padding()
              .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
              .background(.white)
              .cornerRadius(30)
                }
            Spacer().frame(height: 10)
            Button(action: { lingPred = 1
                atView = true}  ) {
              HStack() {
                Image("tempo")
                  .resizable()
                  .scaledToFit()
                  .offset(x:-20)
                Text("Tempo de\nQualidade")
                  .font(.title2.weight(.heavy))
                  .font(.custom("Inter-ExtraBold", size: 24))
                  .foregroundColor(.vermelhoDois)
                  .offset(x:-10)
              }
              .frame(width: 270, height: 70)
              .padding()
              .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.vermelhoDois, lineWidth: 6).shadow(color: .vermelhoDois, radius: -2, x: 0, y: -6))
              .background(.white)
              .cornerRadius(30)
                }
          }
        }
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $atView) { VisualizarLinguagemView(lingPred: lingPred) }
      }
    }

#Preview {
    LinguagemView()
}
