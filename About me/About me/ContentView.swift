//
//  ContentView.swift
//  About me
//
//  Created by Dongha Ryu on 6/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
        
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
        
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
        
            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
