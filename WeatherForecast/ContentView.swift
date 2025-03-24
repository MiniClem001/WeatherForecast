//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Clément Giraud-Sauveur on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var color: Color {
        if isRainy {
            Color.blue
        } else {
            Color.yellow
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
            Image(systemName: symbol)
                .foregroundStyle(color)
            Text("High: \(high)°")
            Text("Low: \(low)°")
        }
        .padding()
    }
}
