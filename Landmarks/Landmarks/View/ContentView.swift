//
//  ContentView.swift
//  Landmarks
//
//  Created by Dongha Ryu on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
