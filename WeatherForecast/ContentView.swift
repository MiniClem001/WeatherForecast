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
            
            VStack {
                Text("Tue")
                Image(systemName: "cloud.rain.fill")
                    .imageScale(.large)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                Text("High: 60°")
                Text("Low: 40°")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
