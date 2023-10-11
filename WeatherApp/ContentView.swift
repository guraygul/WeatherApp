//
//  ContentView.swift
//  WeatherApp
//
//  Created by Güray Gül on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityNameView(cityName: "İzmir, Türkiye")
                WeatherStatusView(imageName: isNight ? "moon.stars.fill" : "sun.haze.fill", degreeValue: 32)
                
                HStack(spacing: 25) {
                    WeatherDayView(dayOfWeek: "Mon", imageName: "sun.max.fill", temperature: 32)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "wind", temperature: 26)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "cloud.moon.rain.fill", temperature: 26)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.bolt.fill", temperature: 24)
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonText: "Change Day Time", backgroundColor: .white, textColor: .blue)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
