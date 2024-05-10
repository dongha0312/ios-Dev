//
//  mac.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct Mac: View {
    var body: some View {
        VStack {
            Text("Mac")
                .font(.system(size: 85))
                .foregroundStyle(.white)
            ScrollView(.horizontal){
                HStack {
                    ProductCardView1(model: "새로운 M3 모델",mac: "M2 또는 M3 칩 탑재 MacBookAir", picname: "MacBook Air", description: "극강의 휴대성 그리고 최대 18시간의 배터리 사용시간. 놀라운 LiquidRetina 디스플레이. 마감은 꿈같은 네 가지 컬러",price: "1,390,000")
                    ProductCardView2(mac: "MacBook Pro",picname: "MacBook Pro",description: "막강한 성능의 M3,M3 Pro 또는 M3 MAX 칩 탑재, 최대 22시간의 배터리 사용시간. 놀라운 밝기를 자랑하는 XDR 디스플레이 까지. 지금 살펴보기",price: "2,390,000 ")
                    ProductCardView2(mac: "iMac",picname: "iMac",description: "막강한 성능의 M3 칩 그리고 시선을 사로잡는 59.6cm 디스플레이를 자랑하는 세계 최고의 올인원 컴퓨터. 지금 살펴보기",price: "1,990,000 ")
                    ProductCardView2(mac: "Mac Studio",picname: "Mac Studio" ,description: "막각한 성능의 M2 Max 또는 M2 Ultra 칩 탑재. 빈틉없는 연결성. 책상 위 공간에 딱 들어맞는 콤팩트한 디자인.",price: "2,990,000")
                    ProductCardView2(mac: "Studio Display",picname: "Studio Display",description: "68.3cm 5K Retina 디스플레이. 센터 스테이지 기술이 적용된 12MP 울트라 와이드 카메라. 스튜디오급 마이크. 6 스피커 사운드 시스템. Mac을 위한 완벽한 파트너. Studio Display를 만나보세요",price: "2,090,000 ")

                }
            }
            Spacer()
            
        }.background(.black)
    }
}

#Preview {
    Mac()
        
}
