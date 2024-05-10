//
//  Intro.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        VStack{
            Image(.videoframe59)
                .resizable()
                .padding(.bottom,0)
                .frame(width: 500, height: 600)
            Text("Apple Event")
            
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
        }.background(.black)
        .foregroundStyle(.white)
    }
}

//logo video in the cemter

#Preview {
    Intro()
        
}
