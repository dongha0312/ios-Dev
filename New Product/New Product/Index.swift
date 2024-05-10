//
//  Index.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct Index: View {
    var body: some View {
        VStack(spacing: 12){
            HStack {
                Text("제품별로 알아보기")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                Spacer()
                }
            CardView(productname: "Mac")
                
            CardView(productname: "iPad")
            CardView(productname: "iPhone")
            CardView(productname: "Airpods")
            
        }
        .background(.black)
    }
}

#Preview {
    Index()
}
