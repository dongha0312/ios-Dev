//
//  ProdifyApp.swift
//  Prodify
//
//  Created by Dongha Ryu on 8/14/24.
//

import SwiftUI
import SwiftData

@main
struct ProdifyApp: App {
    var body: some Scene {
        WindowGroup {
           FooterView()
        }
        .modelContainer(for: ReminderList.self)
    }
}
