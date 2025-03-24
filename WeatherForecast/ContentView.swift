//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Clément Giraud-Sauveur on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mon")
            Image(systemName: "sun.max.fill")
                .imageScale(.large)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.yellow)
            Text("High: 70°")
            Text("Low: 50°")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
