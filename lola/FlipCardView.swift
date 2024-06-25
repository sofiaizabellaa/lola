//
//  FlipCardView.swift
//  lola
//
//  Created by Caio Silva on 21/06/24.
//

import SwiftUI

struct FlipCardView: View {
    let cardName: String
    let themeName: String
    @ObservedObject var presenter: FlipCardPresenter
    var body: some View {
        ZStack {
            Image(themeName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8)
                .frame(width: 300, height: 450)
                .shadow(color: .gray, radius: 10)
                .onTapGesture {
                    presenter.flipButtonTapped()
                }
                .rotation3DEffect(.degrees(presenter.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                .animation(.default, value: presenter.isFlipped)
            Image(cardName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8)
                .scaleEffect(x: -1, y: 1)
                .frame(width: 300, height: 450)
                .shadow(color: .gray, radius: 10)
                .onTapGesture {
                    presenter.flipButtonTapped()
                }
                .opacity(presenter.isFlipped ? 1 : 0) // Show themeName only when flipped
                .rotation3DEffect(.degrees(presenter.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0)) // Counteract card rotation
                .animation(.default, value: presenter.isFlipped)
        }
    }
}

protocol FlipCardPresenterProtocol: ObservableObject {
    var isFlipped: Bool { get }
    func flipButtonTapped()
}
class FlipCardPresenter: FlipCardPresenterProtocol {
    @Published var isFlipped: Bool = false
    func flipButtonTapped() {
        isFlipped.toggle()
    }
}

