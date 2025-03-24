//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Clément Giraud-Sauveur on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon", color: Color.yellow, symbol: "sun.max.fill", high: 70, low: 50)
            DayForecast(day: "Tue", color: Color.blue, symbol: "cloud.rain.fill", high: 60, low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let color: Color
    let symbol: String
    let high: Int
    let low : Int
    
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
