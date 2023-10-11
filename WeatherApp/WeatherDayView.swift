//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.blue, .white],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        WeatherDayView(dayOfWeek: "Monday", imageName: "sun.max.fill", temperature: 32)
    }
}
