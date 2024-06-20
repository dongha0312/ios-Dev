//
//  EventTask.swift
//  Date Planner
//
//  Created by Dongha Ryu on 6/20/24.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
