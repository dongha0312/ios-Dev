//
//  SportTrackerApp.swift
//  SportTracker
//
//  Created by Dongha Ryu on 8/2/24.
//
import SwiftUI
import SwiftData

@main
struct CalendarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Event.self)
            FooterVIew()
        }
    }
}


