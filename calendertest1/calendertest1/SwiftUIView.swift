//
//  SwiftUIView.swift
//  calendertest1
//
//  Created by Dongha Ryu on 8/3/24.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let date: Date
    let title: String
}

class EventViewModel: ObservableObject {
    @Published var events: [Date: [Event]] = [:]
    @Published var selectedDate: Date? = nil
    
    func addEvent(title: String, on date: Date) {
        let newEvent = Event(date: date, title: title)
        let startOfDay = Calendar.current.startOfDay(for: date)
        if events[startOfDay] != nil {
            events[startOfDay]?.append(newEvent)
        } else {
            events[startOfDay] = [newEvent]
        }
    }
    
    func events(on date: Date) -> [Event] {
        let startOfDay = Calendar.current.startOfDay(for: date)
        return events[startOfDay] ?? []
    }
}
