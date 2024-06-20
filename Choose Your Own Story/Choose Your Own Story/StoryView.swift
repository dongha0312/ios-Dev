//
//  ContentView.swift
//  Choose Your Own Story
//
//  Created by Dongha Ryu on 6/20/24.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationStack{
            StoryPageView(story: story, pageIndex:0)
        }
    }
}

#Preview {
    StoryView()
}
