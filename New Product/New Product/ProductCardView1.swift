//
//  ProductCardView.swift
//  New Product
//
//  Created by Dongha Ryu on 5/10/24.
//

import SwiftUI



struct ProductCardView1: View {
    public var model = ""
    public var mac = ""
    public var picname = ""
    public var description = ""
    //false = dark background
    public var price = ""
    
    var body: some View {
        
        VStack(spacing: 16) {
            HStack{
                Text("\(model)")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding(.horizontal)
                    .padding(.top)
                Spacer()
            }
            HStack{
                Text("\(mac)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
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
             

        }.background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.white)
//            .opacity()
//            .brightness(-0.4)
        ).frame(width: 350,height: 450)
        
    }
    
}


#Preview {
    ProductCardView1(model: "" ,mac: "M2 또는 M3 칩 탑재 MacBookAir", picname: "Mac", description: "극강의 휴대성 그리고 최대 18시간의 배터리 사용시간. 놀라운 LiquidRetina 디스플레이. 마감은 꿈같은 네 가지 컬러" )
        .background(.pink)
        
}
