//
//  Expense.swift
//  SwiftDataStudy
//
//  Created by Dongha Ryu on 9/16/24.
//

import Foundation
import SwiftData

@Model
class Expense {
    var name: String
    var date: Date
    var value: Double
    
    init(name: String, date: Date, value: Double) {
        self.name = name
        self.date = date
        self.value = value
    }
}
