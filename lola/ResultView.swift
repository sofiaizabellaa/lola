//
//  ResultView.swift
//  lola
//
//  Created by Caio Silva on 21/06/24.
//

import SwiftUI

struct ResultView: View {
    
    var lingPred: Int
    
    @State private var tView = false
    @State private var sView = false
    
    // 0 = atos, 1 = tempo, 2 = toques, 3 = palavras, 4 = presentes
    
    @State private var linguagensAmor: [Int: CardResultado] = [
        0: CardResultado(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),
        1: CardResultado(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),
        2: CardResultado(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),
        3: CardResultado(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste"),
        4: CardResultado(cardFrente: "cardNameTeste", cardVerso: "themeNameTeste")]
    
    var body: some View {
        ZStack {
            Color.rosaClaro.ignoresSafeArea()
            VStack {
                
                    Text("Toque e descubra")
                        .font(.system(size: 34).weight(.heavy))
                        .foregroundStyle(.vinho)
                HStack {
                    Text("sobre a linguagem do \namor de sua pessoa \nquerida")
                        .font(.system(size: 25).weight(.regular))
                        .foregroundStyle(.vinho)
                        .offset(x:-15, y: -25)
                    Image("dots").resizable().frame(width:15, height: 35)
                        .offset(x:-175, y:5)
                }
                .layoutPriority(1)
                FlipCardView(cardName: linguagensAmor[lingPred]!.cardFrente, themeName: linguagensAmor[lingPred]!.cardVerso, presenter: FlipCardPresenter())
                
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
        .navigationDestination(isPresented: $tView) { QuestionsView() }
        .navigationDestination(isPresented: $sView) {  }
    }
    
    struct CardResultado {
        var cardFrente: String
        var cardVerso: String
    }
}

#Preview {
    ResultView(lingPred: 0)
}
