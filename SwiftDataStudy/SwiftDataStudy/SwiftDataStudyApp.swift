//
//  SwiftDataStudyApp.swift
//  SwiftDataStudy
//
//  Created by Dongha Ryu on 9/16/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataStudyApp: App { 
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Expense.self)
    }
}
