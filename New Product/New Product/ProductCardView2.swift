//
//  ProductCardView.swift
//  New Product
//
//  Created by Dongha Ryu on 5/10/24.
//

import SwiftUI

struct ProductCardView2: View {
    public var mac = ""
    public var picname = ""
    public var description = ""
    //false = dark background
    public var price = ""
//    public var color = ""
    
    var body: some View {
        VStack(spacing: 16) {
            HStack{
                Text("\(mac)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                Spacer()
            }
            Text("\(description)")
                .padding(.horizontal)
                .padding(.bottom,0)
            Image("\(picname)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            HStack{
                Text("₩\(price)부터")
                    .font(.caption)
                    .padding(.horizontal)
                    .padding(.bottom,0)
                Spacer()
                Button(action: {
                    
                }){
                    Text("구입하기")
                        .font(.system(size: 13))
                        .bold()
                        .foregroundStyle(.blue)
                }
                .frame(width: 80,height: 30)
                .padding(.bottom,0)
                .padding(.horizontal,2)
                .background(.gray)
                .cornerRadius(8)
                .brightness(0.2)
            }
            .padding()
        }
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.white)
                    
                //            .opacity()
                //            .brightness(-0.4)
            ).frame(width: 350,height: 450)
            
        
    }
}
    
    
#Preview {
        ProductCardView2(mac:"MacBookPro" ,picname: "Mac Studio",description:" " , price: " ")
        .background(.black)
}
