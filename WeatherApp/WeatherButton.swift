//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct WeatherButton: View {
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    var body: some View {        
            Text(buttonText)
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .foregroundStyle(textColor)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
    }
}

#Preview {
    WeatherButton(buttonText: "Change Day Time", backgroundColor: .white, textColor: .white)
}
