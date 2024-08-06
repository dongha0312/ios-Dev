//
//  ContentView.swift
//  Birthdays
//
//  Created by Dongha Ryu on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(name: "Elton Lin", birthday: .now),
        Friend(name: "Jenny Counrt", birthday: Date(timeIntervalSince1970: 0))
    ]
    
    @State private var newName = ""
    @State private var newDate = Date.now
    
    var body: some View {
        NavigationStack{
            List(friends, id:\.name) { friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthday")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20){
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date){
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save"){
                        let newFriend = Friend(name: newName, birthday: newDate)
                        friends.append(newFriend)
                        
                        newName = ""
                        newDate = .now
                    }
                    .padding()
                    .background(.bar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}