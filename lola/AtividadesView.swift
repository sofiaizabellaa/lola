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
        0: [CardAtividade(cardFrente: "atos_atv1_frente", cardVerso: "atos_atv1_verso"),CardAtividade(cardFrente: "atos_atv2_frente", cardVerso: "atos_atv2_verso"),CardAtividade(cardFrente: "atos_atv3_frente", cardVerso: "atos_atv3_verso"),CardAtividade(cardFrente: "atos_atv4_frente", cardVerso: "atos_atv4_verso"),CardAtividade(cardFrente: "atos_atv5_frente", cardVerso: "atos_atv5_verso")],
        1: [CardAtividade(cardFrente: "tempo_atv1_frente", cardVerso: "tempo_atv1_verso"),CardAtividade(cardFrente: "tempo_atv2_frente", cardVerso: "tempo_atv2_verso"),CardAtividade(cardFrente: "tempo_atv3_frente", cardVerso: "tempo_atv3_verso"),CardAtividade(cardFrente: "tempo_atv4_frente", cardVerso: "tempo_atv4_verso"),CardAtividade(cardFrente: "tempo_atv5_frente", cardVerso: "tempo_atv5_verso")],
        2: [
            CardAtividade(cardFrente: "toque_atv1_frente", cardVerso: "toque_atv1_verso"),
            CardAtividade(
                cardFrente: "toque_atv2_frente",
                cardVerso: "toque_atv2_verso"
            ),
            CardAtividade(cardFrente: "toque_atv3_frente", cardVerso: "toque_atv3_verso"),
            CardAtividade(cardFrente: "toque_atv4_frente", cardVerso: "toque_atv4_verso"),
            CardAtividade(cardFrente: "toque_atv5_frente", cardVerso: "toque_atv5_verso")
        ],
        3: [CardAtividade(cardFrente: "palavras_atv1_frente", cardVerso: "palavras_atv1_verso"),CardAtividade(cardFrente: "palavras_atv2_frente", cardVerso: "palavras_atv2_verso"),CardAtividade(cardFrente: "palavras_atv3_frente", cardVerso: "palavras_atv3_verso"),CardAtividade(cardFrente: "palavras_atv4_frente", cardVerso: "palavras_atv4_verso"),CardAtividade(cardFrente: "palavras_atv5_frente", cardVerso: "palavras_atv5_verso")],
        4: [CardAtividade(cardFrente: "presentes_atv1_frente", cardVerso: "presentes_atv1_verso"),CardAtividade(cardFrente: "presentes_atv2_frente", cardVerso: "presentes_atv2_verso"),CardAtividade(cardFrente: "presentes_atv3_frente", cardVerso: "presentes_atv3_verso"),CardAtividade(cardFrente: "presentes_atv4_frente", cardVerso: "presentes_atv4_verso"),CardAtividade(cardFrente: "presentes_atv5_frente", cardVerso: "presentes_atv5_verso")]]
    
    
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