//
//  SearchBar.swift
//  WeatherForecast
//
//  Created by Dongha Ryu on 5/5/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
        @State var showClearButton = false
        var placeholder = "Search for a locattion"

        var body: some View {
            TextField(placeholder, text: $searchText, onEditingChanged: { editing in
                self.showClearButton = editing
            }, onCommit: {
                self.showClearButton = false
            })
                .modifier(ClearButton(text: $searchText, isVisible: $showClearButton))
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
        }
}


struct ClearButton: ViewModifier {
    @Binding var text: String
    @Binding var isVisible: Bool

    func body(content: Content) -> some View {
        HStack {
            content
            Spacer()
            Image(systemName: "xmark.circle.fill")
                .foregroundColor(Color(.placeholderText))
                .opacity(!text.isEmpty ? 1 : 0)
                .opacity(isVisible ? 1 : 0)
                .onTapGesture { self.text = "" }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
