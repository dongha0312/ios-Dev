//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Dongha Ryu on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SeoulWeather()
                .background(Gradient(colors: gradientColors1))
            PragueWeather()
                .background(Gradient(colors: gradientColors2))
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .indexViewStyle(/*@START_MENU_TOKEN@*/PageIndexViewStyle()/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea()
    }
}
#Preview {
    ContentView()
}
    
