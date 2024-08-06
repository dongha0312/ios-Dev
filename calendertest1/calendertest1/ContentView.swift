//
//  ContentView.swift
//  calendertest1
//
//  Created by Dongha Ryu on 8/3/24.
//

import SwiftUI

struct CalendarView: View {
    @ObservedObject var viewModel = EventViewModel()
    @State private var newEventTitle = ""
    private let calendar = Calendar.current
    private let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // 이전 달로 이동
                }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text("January 2024")
                    .font(.title)
                Spacer()
                Button(action: {
                    // 다음 달로 이동
                }) {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<42, id: \.self) { index in
                    let date = calendar.date(byAdding: .day, value: index - 15, to: calendar.startOfMonth(for: Date()))!
                    CalendarDateCell(date: date, events: viewModel.events(on: date), isSelected: calendar.isDate(date, inSameDayAs: viewModel.selectedDate ?? Date())) {
                        viewModel.selectedDate = date
                    }
                }
            }
            .padding()
            
            if let selectedDate = viewModel.selectedDate {
                VStack {
                    Text("Jan. \(calendar.component(.day, from: selectedDate)). 2024")
                        .font(.headline)
                    TextField("Title:", text: $newEventTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    Button(action: {
                        viewModel.addEvent(title: newEventTitle, on: selectedDate)
                        newEventTitle = ""
                    }) {
                        Text("Add Event")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    if !viewModel.events(on: selectedDate).isEmpty {
                        Text("해당 날짜의 내용 간단히 보여줌")
                            .padding()
                    }
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
            }
        }
    }
}

struct CalendarDateCell: View {
    let date: Date
    let events: [Event]
    let isSelected: Bool
    let action: () -> Void
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
    }()
    
    var body: some View {
        Button(action: action) {
            Text(dateFormatter.string(from: date))
                .foregroundColor(events.isEmpty ? .black : .white)
                .padding()
                .background(events.isEmpty ? (isSelected ? Color.blue : Color.white) : Color.green)
                .cornerRadius(8)
                .shadow(radius: 5)
        }
        .frame(width: 40, height: 40)
    }
}

extension Calendar {
    func startOfMonth(for date: Date) -> Date {
        let components = dateComponents([.year, .month], from: date)
        return self.date(from: components)!
    }
    
    func isDate(_ date1: Date, inSameDayAs date2: Date) -> Bool {
        return isDate(date1, equalTo: date2, toGranularity: .day)
    }
}

struct ContentView: View {
    var body: some View {
        CalendarView()
    }
}

