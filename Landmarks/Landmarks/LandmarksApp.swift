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
        #if !os(watchOS)
        .commands{
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings{
            LandmarkSettings()
        }
        #endif
    }
}
