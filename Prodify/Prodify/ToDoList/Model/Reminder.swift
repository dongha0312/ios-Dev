//
//  Reminder.swift
//  Prodify
//
//  Created by Dongha Ryu on 9/7/24.
//

import Foundation
import SwiftData

@Model
final class Reminder{
    var name: String
    var isCompleted = false
    
    init(name: String, isCompleted: Bool = false) {
        self.name = name
        self.isCompleted = isCompleted
    }
}

