//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Dongha Ryu on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("knock knock!")
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .padding()
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
