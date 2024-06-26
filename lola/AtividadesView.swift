//
//  AtividadesView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 25/06/24.
//

import SwiftUI


struct AtividadesView: View {
    
    var lingPred: Int
    @State private var randomNumber: Int = 0
    
    // 0 = atos, 1 = tempo, 2 = toques, 3 = palavras, 4 = presentes
    @State private var atividadeSugestao: [Int: [CardAtividade]] = [
        0: [CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")],
        1: [CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")],
        2: [CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")],
        3: [CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")],
        4: [CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),CardAtividade(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")]]
    
    
    var body: some View {
        ZStack {
            Color.rosaClaro.ignoresSafeArea()
            VStack {
                Text("Atividade sugerida ")
                    .font(.custom("Inter-ExtraBold", size: 32))
                    .foregroundStyle(.vinho)
                    .offset(x:-15)
                Spacer()
                    .frame(height: 20)
                HStack {
                    Text("para você realizar com \nsua pessoa querida é")
                        .font(.custom("Inter-Medium", size: 24))
                        .foregroundStyle(.vinho)
                        .offset(x:-15, y: -25)
                    Image("dots").resizable().frame(width:15, height: 35)
                        .offset(x:-30, y:-10)
                }
                .padding(.leading,-10)
                .onAppear { self.generateRandomNumber() }
                
                FlipCardView(cardName: atividadeSugestao[lingPred]![randomNumber].cardFrente, themeName: atividadeSugestao[lingPred]![randomNumber].cardVerso, presenter: FlipCardPresenter())
                
                HStack {
                    
                    Button(action: { }, label:
                            
                            {
                        Image("btn_begin")
                        
                    })
                    
                    Button(action: { self.generateRandomNumber() }, label: {
                        Image("btn_redo")
                        
                    })
                    
                }
                
            }
            .padding(.top)
        }
    }
    private func generateRandomNumber() {
        randomNumber = Int.random(in: 0...4)
    }
}

struct CardAtividade {
    var cardFrente: String
    var cardVerso: String
}


#Preview {
    AtividadesView(lingPred: 0)
}
