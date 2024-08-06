//
//  ContentView.swift
//  SportTracker
//
//  Created by Dongha Ryu on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       FooterVIew()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Event.self)
}
