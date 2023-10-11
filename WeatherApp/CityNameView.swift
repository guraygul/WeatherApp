//
//  CityNameView.swift
//  WeatherApp
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct CityNameView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 35, weight: .bold, design: .rounded))
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    CityNameView(cityName: "İzmir, Türkiye")
}
