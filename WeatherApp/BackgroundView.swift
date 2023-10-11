//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    
    BackgroundView(isNight: false)
}
