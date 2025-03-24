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
