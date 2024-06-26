//
//  VisualizarLinguagemView.swift
//  lola
//
//  Created by Caio Silva on 26/06/24.
//

import SwiftUI

struct VisualizarLinguagemView: View {
    
    var lingPred: Int
    
    @State private var tView = false
    @State private var sView = false
    
    // 0 = atos, 1 = tempo, 2 = toques, 3 = palavras, 4 = presentes
    
    @State private var linguagensAmor: [Int: CardResultado] = [
        0: CardResultado(cardFrente: "atosfrente", cardVerso: "atosverso"),
        1: CardResultado(cardFrente: "tempofrente", cardVerso: "tempoverso"),
        2: CardResultado(cardFrente: "toquefrente", cardVerso: "toqueverso"),
        3: CardResultado(cardFrente: "palavrasfrente", cardVerso: "palavrasverso"),
        4: CardResultado(cardFrente: "presentesfrente", cardVerso: "presentesfrente")]
    
    var body: some View {
        ZStack {
            Color.rosaClaro.ignoresSafeArea()
            VStack {
                
                    Text("Toque e descubra")
                        .foregroundStyle(.vinho)
                        .font(.custom("Inter-ExtraBold", size: 32))
                        .padding(.leading, -30)
                HStack {
                    Text("sobre a linguagem do \namor de sua pessoa \nquerida")
                        .font(.custom("Inter-Medium", size: 24))
                        .foregroundStyle(.vinho)
                        .offset(x:-15, y: -25)
                    Image("dots").resizable().frame(width:15, height: 35)
                        .offset(x:-175, y:5)
                }
                .layoutPriority(1)
                FlipCardView(cardName: linguagensAmor[lingPred]!.cardVerso, themeName: linguagensAmor[lingPred]!.cardFrente, presenter: FlipCardPresenter())
                
                HStack {
                    Button(action: {
                        tView = true
                    }, label:
                            
                            {
                        Image("btn_back_test")
                            
                    })
                    
                    Button(action: {
                        sView = true
                    }, label: {
                        Image("btn_go")
                           
                    })
                    
                }

            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $tView) { LinguagemView() }
        .navigationDestination(isPresented: $sView) {
            AtividadesView(lingPred: lingPred)
        }
    }
    
    struct CardResultado {
        var cardFrente: String
        var cardVerso: String
    }
}

#Preview {
    VisualizarLinguagemView(lingPred: 0)
}
