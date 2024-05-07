//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Dongha Ryu on 5/7/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
