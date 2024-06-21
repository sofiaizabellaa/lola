//
//  TelaUmView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 19/06/24.
//

import SwiftUI

struct TelaUmView: View {
    var body: some View {
        ZStack {
            Color.rosaClaro
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                ZStack {
                    HStack {
                        Text("Qual relação \n deseja \n fortalecer")
                            .foregroundColor(.vinho)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.top, 40) // Ajusta o padding superior conforme necessário
                        .padding(.leading, 25)
                        
                        Image ("question")
                            .offset(x:-45, y: 55)
                    }
                }
                Spacer()
                    .frame(maxHeight:50)
                  
                VStack {
                    ZStack {
                        ZStack {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 341, height: 98)
                              .background(.white)
                              .cornerRadius(30)
                              .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                              .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                  .inset(by: -1.5)
                                  .stroke(Color.vinho, lineWidth: 3)
        )
                        }
                        .frame(width: 341, height: 98)
                        .padding(.leading, 24)
                        
                        HStack {
                            Image ("heart")
                            Spacer()
                                .frame(maxWidth:55)
                            Text ("Casal")
                                .font(.title)
                                .foregroundColor(.vinho)
                                .bold()
                            
                        }
                        .padding(.leading,-20)
                       
                    }
                    Spacer()
                        .frame(maxHeight: 30)
                    ZStack {
                        ZStack {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 341, height: 98)
                              .background(.white)
                              .cornerRadius(30)
                              .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                              .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                  .inset(by: -1.5)
                                  .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3)
        )
                        }
                        .frame(width: 341, height: 98)
                        .padding(.leading, 24)
                        
                        HStack {
                            Image ("puzzel")
                            Spacer()
                                .frame(maxWidth:40)
                            Text ("Amizade")
                                .font(.title)
                                .foregroundColor(.vinho)
                                .bold()
                
                        }
                        .padding(.leading, -10)
                       
                    }
                    Spacer()
                        .frame(maxHeight: 30)
                    ZStack {
                        ZStack {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 341, height: 98)
                              .background(.white)
                              .cornerRadius(30)
                              .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                              .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                  .inset(by: -1.5)
                                  .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3)
        )
                        }
                        .frame(width: 341, height: 98)
                        .padding(.leading, 24)
                        
                        HStack {
                            Image ("house")
                            Spacer()
                                .frame(maxWidth:50)
                            Text ("Família")
                                .font(.title)
                                .foregroundColor(.vinho)
                                .bold()
                
                        }
                        .padding(.leading, -20)
                       
                    }
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading) // Alinha o VStack à esquerda
        }
    }
}

#Preview {
    TelaUmView()
}

