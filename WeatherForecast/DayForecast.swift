//
//  DayForecast.swift
//  WeatherForecast
//
//  Created by Clément Giraud-Sauveur on 24/03/2025.
//

import SwiftUI

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var color: Color {
        if isRainy {
            .blue
        } else {
            .yellow
        }
    }

    var symbol: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }

    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: symbol)
                .foregroundStyle(color)
                .font(.largeTitle)
            Text("High: \(high)°")
                .fontWeight(.semibold)
            Text("Low: \(low)°")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
