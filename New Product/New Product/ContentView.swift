//
//  ContentView.swift
//  New Product
//
//  Created by Dongha Ryu on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Intro()
            Index()
            Mac()
            iPad()
            iPhone()
            
        }
            .tabViewStyle(.page)
//            .indexViewStyle(/*@START_MENU_TOKEN@*/PageIndexViewStyle()/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
        
}
