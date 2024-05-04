//
//  Scrumview.swift
//  Scrumdinger
//
//  Created by Dongha Ryu on 5/3/24.
//

import SwiftUI

struct Scrumview: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }

    }
}

#Preview {
    Scrumview(scrums: DailyScrum.sampleData)
}
