//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Dongha Ryu on 6/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
