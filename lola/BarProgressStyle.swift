//
//  BarProgressStyle.swift
//  lola
//
//  Created by Caio Silva on 20/06/24.
//

import SwiftUI

struct BarProgressStyle: ProgressViewStyle {

    var color: Color = .purple
    var height: Double = 20.0
    var width: Double = 300.0
    var labelFontStyle: Font = .body

    func makeBody(configuration: Configuration) -> some View {

        let progress = configuration.fractionCompleted ?? 0.0

        GeometryReader { geometry in

            VStack(alignment: .leading) {

                configuration.label
                    .font(labelFontStyle)

                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(uiColor: .whitef))
                    .frame(height: height)
                    .frame(width: width)
                    .overlay(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(color)
                            .frame(width: width * progress)
                            .overlay {
                                if let currentValueLabel = configuration.currentValueLabel {

                                    currentValueLabel
                                        .font(.headline)
                                        .foregroundColor(.white)
                                }
                            }
                    }
                    .frame(width: width, alignment: .center)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
    
}

#Preview {
    CarrosselView()
}
