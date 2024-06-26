//
//  AtividadesView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 25/06/24.
//

import SwiftUI
struct AtividadesView: View{
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
                
                Spacer ()
                HStack {
                    Button(action: {}, label:
                            
                            {
                        Image("btn_begin")
                        
                    })
                    
                    Button(action: {}, label: {
                        Image("btn_redo")
                        
                    })
                    
                }
                
            }
            .padding(.top)
        }
    }
}

struct CardResultado {
    var cardFrente: String
    var cardVerso: String
}


#Preview {
    AtividadesView()
}
