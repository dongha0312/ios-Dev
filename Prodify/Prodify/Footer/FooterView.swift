//
//  FooterView.swift
//  Prodify
//
//  Created by Dongha Ryu on 9/7/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        NavigationView{
            TabView(selection: .constant(1),
                    content:  {
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("ToDoList")
                    }
                .tag(1)
                TimerView()
                    .tabItem { 
                        Image(systemName: "clock")
                        Text("Pomodoro Timer")
                    }.tag(2)
            })
            .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    FooterView()
}
