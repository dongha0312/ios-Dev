//
//  ProductView.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct CardView: View {
   @State public var productname = ""
    
    
    var body: some View {
        VStack(spacing: 16) {
            HStack{
                Text("\(productname)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                Spacer()
            }
            Image("\(productname)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
        }.background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.card)
//            .opacity()
//            .brightness(-0.4)
        )
        
    }
}

#Preview {
        CardView(productname: "Mac")
        .background(.blue)
}
