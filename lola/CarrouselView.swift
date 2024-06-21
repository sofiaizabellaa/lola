//
//  CarrouselView.swift
//  lola
//
//  Created by Caio Silva on 20/06/24.
//

import SwiftUI

struct CarrosselView: View {
    
    @State private var currentIndex = 0
    
    let items = Array(0..<5)
    
    let flagList: [Bool] = [false, false, false, false, false]
    
    @State private var progressDone = 0.0
    @State private var questionsList: [CardQuestion] = [CardQuestion( id:0, answer1: "Gosta de receber mensagens de amor, carinho e afeto", answer2: "Gosta de receber abraços e caricias", flag1: false, flag2: false),
                                                        CardQuestion( id:1, answer1: "Gosta de passar tempo a sós com alguém que considera especial", answer2: "Sente-se amado quando alguem o oferece ajuda prática", flag1: false, flag2: false),
                                                        CardQuestion( id:2, answer1: "Gosta quando ganha presentes", answer2: "Gosta de fazer viagens com as pessoas que gosta e ama", flag1: false, flag2: false),
                                                        CardQuestion( id:3, answer1: "Sente-se amado(a) quando as pessoas fazem coisas para ajudar-lhe", answer2: "Sente-se amado(a) quando as pessoas lhe tocam", flag1: false, flag2: false),
                                                        CardQuestion( id:4, answer1: "Sente-se amado(a) quando alguém que o ama lhe rodeia com o braço", answer2: "Sente-se amado(a) quando recebe um presente de alguém que o ama", flag1: false, flag2: false)]
    
    
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            ScrollViewReader { prx in
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 0){
                        ForEach(items, id: \.self){ index in
                            GeometryReader{ itemProxy in
                                let itemFrame = itemProxy.frame(in: .global)
                                let scale = max(0.7, 1 - abs(itemFrame.midX - width / 2) / width)
                                let opacity = Double(scale)
                                ZStack(alignment: .top){
                                    VStack(spacing: 30) {
                                        Spacer().frame(height:5)
                                        Button(action: {
                                            
                                            if questionsList[index].flag2 {
                                                questionsList[index].flag2.toggle()
                                                questionsList[index].flag1.toggle() } else { questionsList[index].flag1.toggle() }
                                        })
                                        {
                                            Text("\(questionsList[index].answer1)")
                                                .font(.subheadline.weight(.heavy))
                                                .foregroundColor(.vinho)
                                            
                                                .frame(width: 270, height: 40)
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.vinho, lineWidth: 6).shadow(color: .vinho, radius: -2, x: 0, y: -6))
                                                .background(questionsList[index].flag1 ? .rosaClaro : .white)
                                                .cornerRadius(20)
                                        }
                                        Button(action: {
                                            if questionsList[index].flag1 {
                                                questionsList[index].flag1.toggle()
                                                questionsList[index].flag2.toggle() } else { questionsList[index].flag2.toggle() }   }   ) {
                                                    Text("\(questionsList[index].answer2)")
                                                        .font(.subheadline.weight(.heavy))
                                                        .foregroundColor(.vinho)
                                                    
                                                        .frame(width: 270, height: 40)
                                                        .padding()
                                                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.vinho, lineWidth: 6).shadow(color: .vinho, radius: -2, x: 0, y: -6))
                                                        .background(questionsList[index].flag2 ? .rosaClaro : .white)
                                                        .cornerRadius(20)
                                                }
                                        HStack {
                                            Button(action: {withAnimation {
                                                currentIndex = currentIndex - 1 % items.count
                                                prx.scrollTo(currentIndex, anchor: .center) }}, label:
                                                    
                                                    {
                                                Image("heartQBack")
                                                    .resizable()
                                                    .frame(width: 60, height: 60)
                                            })
                                            Spacer().frame(width: 140)
                                            Button(action: {
                                                withAnimation {
                                                    currentIndex = currentIndex + 1 % items.count
                                                    prx.scrollTo(currentIndex, anchor: .center) }
                                            }, label: {
                                                Image("heartQNext")
                                                    .resizable()
                                                    .frame(width: 60, height: 60)
                                            })
                                            
                                        }
                                    }
                                    .frame(width: 342, height: 380)
                                    .background(Color.rosaEscuro)
                                    .cornerRadius(20)
                                    Image("heartQTop")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .padding(-26)
                                }
                                .frame(width: 280, height: 444)
                                .scaleEffect(scale)
                                .opacity(opacity)
                            }
                            .frame(width: 280, height: 444)
                        }
                    }
                    .padding(.horizontal, (width - (width * 0.7)) / 2)
                }
            }
        }
        .frame(height: 444)
        
        let progressDone: CGFloat = CGFloat(questionsList.filter{ $0.isAnswered }.count)
        ProgressView(value: progressDone, total: 5).progressViewStyle(BarProgressStyle(color:.vinho, height:20.0))
        if progressDone == 5 {
                Button(action: { }, label: {
                    Image("btn_qresult")
                        .resizable()
                        .frame(width: 60, height: 60)
                })
            Spacer()
            }
    }
}
struct CardQuestion: Identifiable {
    var id: Int
    var answer1: String
    var answer2: String
    var flag1: Bool
    var flag2: Bool
    var isAnswered: Bool { return flag1 || flag2 }
}



#Preview {
    CarrosselView()
}
