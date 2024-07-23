//
//  WeatherView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 18/05/24.
//

import SwiftUI

struct WeatherView: View {
    var temperature: Double
    var condition: String
    
    var body: some View {
        VStack {
            Text("Current Weather")
                .font(.title)
            
            Text("\(temperature)°C")
                .font(.largeTitle)
                .foregroundColor(temperature > 20 ? .red : .blue)  // Change text color based on temperature
            
            Text(condition)
                .font(.body)
            
            Button("Refresh") {
                // Action to fetch updated weather data
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}


#Preview {
    WeatherView(temperature: 42.0, condition: "Very hot")
}
