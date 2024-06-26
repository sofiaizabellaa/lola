

//
//  ContentView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 19/06/24.
//

import SwiftUI

struct InicialView: View {
    
    @State private var showFullScreenCover: Bool = false // Variável de estado para controlar a navegação

    var body: some View {
        ZStack{
            Color.rosaClaro
            HStack {
                Image ("lings")
                Image ("logo")
            }
            .padding(.leading,-120)
        }
        .ignoresSafeArea()
        
        // Configurar o temporizador para 3 segundos
        .onAppear {
                   DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                       self.showFullScreenCover = true
                   }
               }
        .fullScreenCover(isPresented: $showFullScreenCover) {
                    RelacaoView() // Tela de destino
                }
    }
}

#Preview {
    InicialView()
}
