//
//  weatherButton.swift
//  SwiftUI_weather
//
//  Created by Cyzere Happy on 9/18/25.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color

    // Convert String to Color
    private func color(from hex: String) -> Color {
        Color(hex)
    }

    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor) // If textColor is a hex string too
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}


