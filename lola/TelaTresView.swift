//
//  TelaTresView.swift
//  lola
//
//  Created by Sofia Izabella Tenório Chaves on 20/06/24.
//

import SwiftUI

struct TelaTresView: View {
    var body: some View {
        ZStack {
            Color.rosaClaro
            VStack {
                HStack {
                    Text ("Escolha a \nlinguagem do amor \nda sua pessoa \n amada")
                        .foregroundColor(.vinho)
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .padding(.top, 40) // Ajusta o padding superior conforme necessário
                        .padding(.leading, 25)
                    Image ("double_points")
                        .offset(x:-190, y:81)
                    
                }
                Spacer()
                    .frame (maxWidth: 90, maxHeight: 15)
                
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
                      .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3))
                    HStack {
                        Image ("toque")
                        Spacer()
                            .frame(maxWidth: 15)
                        Text ("Toque físico")
                            .font(.system(size:24))
                            .foregroundColor(.vinho)
                            .bold()
                    }
                    .padding(.leading, -30)
                    
                }
                
              Spacer()
                    .frame(maxHeight: 20)
                
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
                      .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3))
                    HStack {
                        Image ("atos")
                        Spacer ()
                            .frame(maxWidth:20)
                        Text ("Atos de serviço")
                            .font(.system(size:24))
                            .foregroundColor(.vinho)
                            .bold()
                    }
                    .padding(.leading,-30)
                   
                }
                
                Spacer()
                      .frame(maxHeight: 20)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 341, height: 98)
                  .background(.white)
                  .cornerRadius(30)
                  .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                  .overlay(
                    RoundedRectangle(cornerRadius: 30)
                      .inset(by: -1.5)
                      .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3))
                Spacer()
                      .frame(maxHeight: 20)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 341, height: 98)
                  .background(.white)
                  .cornerRadius(30)
                  .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                  .overlay(
                    RoundedRectangle(cornerRadius: 30)
                      .inset(by: -1.5)
                      .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3))
                
                Spacer()
                      .frame(maxHeight: 20)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 341, height: 98)
                  .background(.white)
                  .cornerRadius(30)
                  .shadow(color: Color(red: 0.72, green: 0, blue: 0.16), radius: 0, x: 0, y: 10)
                  .overlay(
                    RoundedRectangle(cornerRadius: 30)
                      .inset(by: -1.5)
                      .stroke(Color(red: 0.72, green: 0, blue: 0.16), lineWidth: 3))
                
               
                
                Spacer()
                    .frame(maxHeight: 20)
                
                
            }

            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .ignoresSafeArea()
    }
}

#Preview {
    TelaTresView()
}
