//
//  WeatherMain.swift
//  WeatherForecast
//
//  Created by Dongha Ryu on 5/5/24.
//

import SwiftUI

let gradientColors1: [Color] = [
    .gradientTop,
    .gradientBottom
]
let gradientColors2: [Color] = [
    .cloudyTop,
    .cloudyBottom
]

struct WeatherPage: View {
    var addLocation:()-> Void

    var body: some View {
        
        VStack(spacing: 30) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Spacer()
                Text("Weather")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                HStack{
                    Spacer()
                    Button(action: addLocation){
                        Image(systemName: "pencil.circle")
                            .padding()
                            .foregroundColor(.white)
                            
                    }
                    .font(.system(size: 22, weight: .regular))
                }
            }
            SearchBar(searchText: .constant(""))
                .padding(.top,3)
            NavigationLink(destination: SeoulWeather(), label: { Text("seoul")})
            Spacer()
            
        }
        .padding()
        }
    }

#Preview {
    WeatherPage(addLocation: {})
        .background(Gradient(colors: gradientColors1))
}
