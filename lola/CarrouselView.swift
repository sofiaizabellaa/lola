//
//  CarrouselView.swift
//  lola
//
//  Created by Caio Silva on 20/06/24.
//

import SwiftUI



struct CarrosselView: View {
        
    @State private var currentIndex = 0
    @State var lingList: [Int] = [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7]
    @State var lingPred: Int = 7
    @State private var resultView = false
    
    let items = Array(0..<20)
    
    
    // 0 = atos, 1 = tempo, 2 = toques, 3 = palavras, 4 = presentes
     
    @State private var progressDone = 0.0
    @State private var questionsList: [CardQuestion] = [
        CardQuestion(
            answer1: Answer(text: "Gosta de receber mensagens de amor, carinho e afeto", lingAmor: 3),
            answer2: Answer(text: "Gosta de receber abraços e caricias", lingAmor: 2),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta de passar tempo a sós com alguém que considera especial", lingAmor: 1),
            answer2: Answer(text: "Sente-se amado quando alguem o oferece ajuda prática", lingAmor: 0),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta quando ganha presentes", lingAmor: 4),
            answer2: Answer(text: "Gosta de fazer viagens com as pessoas que gosta e ama", lingAmor: 1),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Sente-se amado(a) quando as pessoas fazem coisas para ajudar-lhe", lingAmor: 0),
            answer2: Answer(text: "Sente-se amado(a) quando as pessoas lhe tocam", lingAmor: 2),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Sente-se amado(a) quando alguém que o ama lhe rodeia com o braço", lingAmor: 2),
            answer2: Answer(text: "Sente-se amado(a) quando recebe um presente de alguém que o ama", lingAmor: 4),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta de sair com alguém que o ama ou admira", lingAmor: 1),
            answer2: Answer(text: "Gosta de ficar de mãos dadas com as pessoas especiais para ele(a)", lingAmor: 2),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Símbolos visíveis de amor são importantes para a pessoa", lingAmor: 4),
            answer2: Answer(text: "Sente-se amado(a) quando as pessoas elogiam e dizem que o (a) amam", lingAmor: 3),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta de sentar perto das pessoas a quem aprecia", lingAmor: 2),
            answer2: Answer(text: "Gosta de que lhe digam que é atraente/bonito(a)", lingAmor: 3),
            flag1: false, flag2: false),
    
        CardQuestion(
            answer1: Answer(text: "Gosta de passar tempo com quem  gosta ou ama", lingAmor: 1),
            answer2: Answer(text: "Gosta de receber “presentinhos”", lingAmor: 4),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta de ouvir frases do tipo tenho “orgulho de você”, eu admiro você", lingAmor: 3),
            answer2: Answer(text: "Sabe que alguém lhe ama quando ele(a) lhe ajuda de maneira proativa", lingAmor: 0),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta de estar junto e fazer coisas juntas com quem gosta e ama", lingAmor: 1),
            answer2: Answer(text: "Gosta quando lhe dizem palavras bondosas", lingAmor: 3),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "O que a pessoa faz a afeta mais que aquilo que ela diz", lingAmor: 0),
            answer2: Answer(text: "Os abraços fazem-lhe sentir participante e apreciado(a)", lingAmor: 2),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Aprecia ouvir elogios com frequência", lingAmor: 3),
            answer2: Answer(text: "Vários presentes pequenos significam mais para ele(a) que um grande ", lingAmor: 4),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Sente-se amado(a) quando estão conversando ou fazendo coisas juntos", lingAmor: 1),
            answer2: Answer(text: "Sente-se amado(a) quando recebe massagem ou carícias com frequência", lingAmor: 2),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta que as pessoas elogiem e validem as suas realizações", lingAmor: 3),
            answer2: Answer(text: "Sabe que as pessoas o amam quando fazem coisas para servi-lo", lingAmor: 0),
            flag1: false, flag2: false),
        
        
        CardQuestion(
            answer1: Answer(text: "Nunca se cansa de beijos e carícias", lingAmor: 2),
            answer2: Answer(text: "Gosta quando as pessoas o escutam e mostram interesse genuíno no que esta dizendo e no que gosta de fazer", lingAmor: 3),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Nunca se cansa de beijos e carícias", lingAmor: 2),
            answer2: Answer(text: "Gosta quando as pessoas o escutam e mostram interesse genuíno no que esta dizendo e no que gosta de fazer", lingAmor: 1),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Sente-se amado(a) quando pessoas que gosta e ama ajudam nos seus trabalhos e projetos", lingAmor: 0),
            answer2: Answer(text: "Gosta de dar e receber presentes para quem eu ama e gosta", lingAmor: 4),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Gosta que as pessoas elogiem sua aparência e/ou seus resultados", lingAmor: 3),
            answer2: Answer(text: "Sente-se amado(a) quando as pessoas apreciam suas ideias e e respeitam suas opiniões", lingAmor: 1),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Não consegue deixar de tocar nas pessoas que ama quando esta perto", lingAmor: 2),
            answer2: Answer(text: "Atos de serviço fazem com que se sinta amado(a)", lingAmor: 0),
            flag1: false, flag2: false),
        
        CardQuestion(
            answer1: Answer(text: "Aprecia muito quando as pessoas que gosta e ama fazem gestos de serviço e apoio por ela", lingAmor: 0),
            answer2: Answer(text: "Gosta de receber presentes que pessoas especiais fazem para ele(a)", lingAmor: 4),
            flag1: false, flag2: false),
    ]
    
    
    
    
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
                                                questionsList[index].flag1.toggle()
                                                lingList[index] = questionsList[index].answer1.lingAmor
                                            }
                                            else {
                                                questionsList[index].flag1.toggle()
                                                lingList[index] = questionsList[index].answer1.lingAmor
                                            }
                                        })
                                        {
                                            Text("\(questionsList[index].answer1.text)")
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
                                                questionsList[index].flag2.toggle()
                                                lingList[index] = questionsList[index].answer2.lingAmor
                                                
                                            }
                                            else {
                                                questionsList[index].flag2.toggle()
                                                lingList[index] = questionsList[index].answer2.lingAmor
                                                
                                            }   }   ) {
                                                Text("\(questionsList[index].answer2.text)")
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
        ProgressView(value: progressDone, total: 20).progressViewStyle(BarProgressStyle(color:.vinho, height:20.0))
        if progressDone == 20 {
            Button(action: {
                    lingPred = mostFrequentElement(in: lingList)!
                    resultView = true
                    },
                   label: {
                Image("btn_qresult")
                    .resizable()
                    .frame(width: 60, height: 60)
            })
                
            }
            Spacer()
            .navigationDestination(isPresented: $resultView) { ResultView(lingPred: lingPred) }

        }
        
        

    
    
    func mostFrequentElement(in array: [Int]) -> Int? {
        var counts: [Int: Int] = [:]
        
        for element in array {
            counts[element, default: 0] += 1
        }
        
        return counts.max { $0.value < $1.value }?.key
    }
}

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var lingAmor: Int
}


struct CardQuestion: Identifiable{
    var id = UUID()
    var answer1: Answer
    var answer2: Answer
    var flag1: Bool
    var flag2: Bool
    var isAnswered: Bool { return flag1 || flag2 }
}

//enum LinguagensTipo {
//    case toque
//    case presentes
//    case atos
//    case palavras
//    case tempo
//}

#Preview {
    CarrosselView()
}
