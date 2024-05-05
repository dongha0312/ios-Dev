//
//  SwiftUIView.swift
//  WeatherForecast
//
//  Created by Dongha Ryu on 5/5/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient:
                            Gradient(colors: gradientColors), startPoint: .top, endPoint: .bottomTrailing)
        }.frame(height: .infinity)
    }
}

#Preview {
    BackgroundView()
}
