//
//  WeatherStatusView.swift
//  WeatherApp
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct WeatherStatusView: View {
    var imageName: String
    var degreeValue: Int
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(degreeValue)°")
                .font(.system(size: 70, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
    }
}

#Preview {
    WeatherStatusView(imageName: "sun.haze.fill", degreeValue: 32)
}
