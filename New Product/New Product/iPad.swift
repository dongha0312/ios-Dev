//
//  iPad.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct iPad: View {
    var body: some View {
        VStack {
            Text("iPad")
                .font(.system(size: 85))
                .foregroundStyle(.white)
            ScrollView(.horizontal){
                HStack {
                    ProductCardView1(model:"New M4 모델",mac: "iPad Pro",picname: "iPad Pro",description: "궁극의 iPad란 이런 것. 자세히 살펴보기",price: "1,499,000 ")
                        
                    ProductCardView1(model: "New",mac: "iPad Air",picname: "iPad Air",description: "새로운 디자인의 11 모델 그리고 새롭게 선보이는 13 모델 iPad Air를 살펴보세요.",price: "1,990,000 ")
                    ProductCardView2(mac: "상상을 적어내다.",picname: "Apple Pencil" ,description: "Apple Pencil은 그림을 그리고, 메모를 적고, 뭔가 끄적거리는 행위가 어떤 느낌으로 이루어져야 하는지에 대한 기준을 제시합니다. 직관적이고, 정밀하면서도 사뭇 신기롭죠.",price: "195,000")
                

                }
            }
            Spacer()
            
        }.background(.black)
    }
}

#Preview {
    iPad()
}
