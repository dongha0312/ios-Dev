//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Dongha Ryu on 5/10/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryMame: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryMame)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink{
                            LandmarkDetail(landmark: landmark)
                        } label:{
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return CategoryRow(
        categoryMame: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}
