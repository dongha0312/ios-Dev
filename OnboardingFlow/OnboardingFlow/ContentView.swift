//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Dongha Ryu on 4/29/24.
//

import SwiftUI

let gradientColors: [Color] = [
    .grandientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
