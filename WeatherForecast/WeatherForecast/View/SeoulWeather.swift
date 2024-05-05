//
//  SeoulWeather.swift
//  WeatherForecast
//
//  Created by Dongha Ryu on 5/5/24.
//

import SwiftUI

struct SeoulWeather: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack (spacing: 4){
                Text("Seoul")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top)
                HStack(alignment: .center) {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    
                    Text("20°")
                    
                }
                .font(.system(size: 50))
                Text("Sunny - Feels like 22°")
                    .font(.system(size: 15))
                    .opacity(0.25)
                
                HStack{
                    currentSummaryView
                        .padding(.top)
                    
                }
                VStack{
                    Text("Hourly temperature")
                        .font(.system(size: 15))
                        .opacity(0.25)
                        .padding(.top)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        HourSummaryView(temp: "20°", icon: Image(systemName: "sun.max"), time: "7 PM")
                        HourSummaryView(temp: "18°", icon: Image(systemName: "sun.min"), time: "8 PM")
                        HourSummaryView(temp: "17°", icon: Image(systemName: "cloud.sun"), time: "9 PM")
                        
                        HourSummaryView(temp: "15°", icon: Image(systemName: "cloud.sun"), time: "10 PM")
                        HourSummaryView(temp: "14°", icon: Image(systemName: "sunset"), time: "11 PM")
                        HourSummaryView(temp: "14°", icon: Image(systemName: "moon.stars"), time: "12 PM")
                        HourSummaryView(temp: "13°", icon: Image(systemName: "moon.stars"), time: "1 AM")
                    }
                }
                .padding()
                Text("Daily temperature")
                    .font(.system(size: 15))
                    .opacity(0.25)
                    .padding(.top)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        DaySummaryView(day: "Monday", highTemp: "19°", lowTemp: "16°", icon: Image(systemName: "sun.max.fill"))
                        DaySummaryView(day: "Tuesday", highTemp: "20°", lowTemp: "13°", icon: Image(systemName: "sun.max.fill"))
                        DaySummaryView(day: "Wednesday", highTemp: "18°", lowTemp: "11°", icon: Image(systemName: "cloud.fill"))
                        DaySummaryView(day: "Thursday", highTemp: "22°", lowTemp: "18°", icon: Image(systemName: "cloud.heavyrain.fill"))
                        DaySummaryView(day: "Friday", highTemp: "23°", lowTemp: "16°", icon: Image(systemName: "sun.max.fill"))
                        DaySummaryView(day: "Saturday", highTemp: "21°", lowTemp: "18°", icon: Image(systemName: "cloud.sun.fill"))
                        DaySummaryView(day: "Sunday", highTemp: "24°", lowTemp: "12°", icon: Image(systemName: "sun.max.fill"))
                    }
                    
                }
                .padding(.horizontal)
                Spacer()
                
            }.padding(.top,20)
            
            Spacer()
            
        }
        
        .padding()
        .foregroundStyle(.white)
        
    }
}


private var currentSummaryView: some View{
    VStack {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    detailView(text: "5.24 AM",
                               image: .init(systemName: "sunrise"),
                               offset: .init(width: 0, height: -2))
                    
                    detailView(text: "9.28 PM",
                               image: .init(systemName: "sunset"),
                               offset: .init(width: 0, height: -2))
                }
                Spacer()
            }
            VStack(alignment: .leading, spacing: 6) {
                detailView(text: "UV: 7",
                           image: .init(systemName: "sun.max"))
                
                detailView(text: "0 %",
                           image: .init(systemName: "humidity"))
            }
            
            HStack {
                Spacer()
                VStack(alignment: .leading, spacing: 6) {
                    detailView(text: "1 km/h",
                               image: .init(systemName: "wind"))
                    
                    detailView(text: "SE",
                               image: .init(systemName: "arrow.up.right.circle"))
                }
            }
        }
        .padding()
    }
}
private func detailView(text: String, image: Image, offset: CGSize = .zero) -> some View {
        HStack {
            image
                .imageScale(.medium)
                .foregroundColor(.white)
                .offset(offset)
            Text(text)
        }
    }

#Preview {
    SeoulWeather()
        .background(Gradient(colors: gradientColors1))
}
