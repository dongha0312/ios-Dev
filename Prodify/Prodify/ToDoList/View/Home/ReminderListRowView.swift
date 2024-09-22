//
//  ReminderRowListView.swift
//  Prodify
//
//  Created by Dongha Ryu on 9/7/24.
//

import SwiftUI
import SwiftData

struct ReminderListRowView: View {
    @Bindable var reminderList: ReminderList
    
    var body: some View {
        HStack{
            listIcon
            Text(reminderList.name)
            Spacer()
            Text("\(reminderList.reminder.count)")
        }
    }
    
    var listIcon: some View{
        ZStack{
            Circle()
                .fill(.primary)
                .frame(width: 27)
            Image(systemName: reminderList.iconName)
                .font(.footnote)
                .foregroundColor(.white)
                .bold()
        }
    }
}

#Preview {
    do{
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: ReminderList.self, configurations: config)
        let example = ReminderList(name: "App Team", iconName:"iphone", reminder: [Reminder(name: "Talke to Sam"), Reminder(name: "Watch WWDC")])
        
        return ReminderListRowView(reminderList: example)
            .modelContainer(container)
    } catch{
        fatalError("Failed to create model container")
    }
}
