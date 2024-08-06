//
//  FooterVIew.swift
//  SportTracker
//
//  Created by Dongha Ryu on 8/6/24.
//

import SwiftUI

struct FooterVIew: View {
    var body: some View {
        NavigationView{
            TabView(selection: .constant(1)){
                MainView()
                    .tabItem {
                        Label("Main", systemImage: "house.fill")
                    }
                    .foregroundColor(.black)
                UserView()
                    .tabItem{
                        Label("MY", systemImage: "person")
                    }
                    .foregroundColor(.black)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    FooterVIew()
}
