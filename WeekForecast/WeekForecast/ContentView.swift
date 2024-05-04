//
//  ContentView.swift
//  WeekForecast
//
//  Created by Dongha Ryu on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            WeekForecast(day: 1, isRainy: true, high: 10, low: 12)
            WeekForecast(day: 2, isRainy: false, high: 10, low: 12)
            WeekForecast(day: 3, isRainy: true, high: 10, low: 12)
            WeekForecast(day: 4, isRainy: false, high: 10, low: 12)
        }
        VStack{
            HStack{
                WeekForecast(day: 5, isRainy: true, high: 10, low: 12)
                WeekForecast(day: 6, isRainy: false, high: 10, low: 12)
                WeekForecast(day: 7, isRainy: true, high: 10, low: 12)
                WeekForecast(day: 7, isRainy: true, high: 10, low: 12)
                WeekForecast(day: 7, isRainy: true, high: 10, low: 12)
                
            }
        }
        .padding()
        Average(low: 70, high: 120)
    }
}

#Preview {
    ContentView()
}
        
struct WeekForecast: View {
    let day: Int
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        if isRainy{
            return "cloud.rain.fill"
        }
        else{
            return "sun.max.fill"
        }
    }
        
    var iconColor: Color{
        if isRainy{
            return Color.blue
        }
        else{
            return Color.yellow
        }
    }
    
    var body: some View{
        VStack{
            Text("\(day)")
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
    }
}

struct Average: View {
    var low: Int
    var high: Int
    var body: some View {
        VStack{
            Text("Avr. High: \(high/7)")
                .fontWeight(.semibold)
            Text("Avr. Low: \(low/7)")
                .fontWeight(.semibold)
        }
    }
}

