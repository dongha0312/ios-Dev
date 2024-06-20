//
//  Date_PlannerApp.swift
//  Date Planner
//
//  Created by Dongha Ryu on 6/20/24.
//

import SwiftUI

@main
struct Date_PlannerApp: App {
    @StateObject private var eventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)
        }
    }
}
