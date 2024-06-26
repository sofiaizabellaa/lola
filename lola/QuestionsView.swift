//
//  QuestionsView.swift
//  lola
//
//  Created by Caio Silva on 20/06/24.
//

import SwiftUI

struct QuestionsView: View {
    var body: some View {
        ZStack {
            Color.rosaClaro.ignoresSafeArea()
            VStack {
                Spacer().frame(height:10)
                HStack {
                    Text("Responda ao teste ”As \ncinco linguagens do \namor” de Gary Chapman escolhendo a alternativa \nde sua preferencia")
                        .font(.custom("Inter-ExtraBold", size: 24))
                        .font(.system(size: 23).weight(.heavy))
                        .foregroundStyle(.vinho)
                    Image("dots").resizable().frame(width:15, height: 35)
                        .offset(x:-79, y:60)
                }
                .layoutPriority(1)
            CarrosselView()
                
            }
        }
    }
}

#Preview {
    QuestionsView()
}
