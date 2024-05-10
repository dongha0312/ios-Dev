//
//  iPhone.swift
//  New Product
//
//  Created by Dongha Ryu on 5/9/24.
//

import SwiftUI

struct iPhone: View {
    var body: some View {
        VStack {
            Text("iPhone")
                .font(.system(size: 85))
                .foregroundStyle(.white)
            ScrollView(.horizontal){
                HStack {
                    ProductCardView2(mac: "iPhone 15 Pro",picname: "iPhone Pro1",description: "초강력, 초경량. 완전히 새로운 티타늄 디자인. Apple 사상 가장 앞선 48MP 메인 카메라. 그리고 게임의 판도를 바꾸는 A17 pro 칩. 지금 자세히 알아보세요.",price: "1,550,000 ")
                        
                    ProductCardView2(mac: "iPhone 15",picname: "iPhone 1" ,description: "요긴한 각종 알림과 '실시간 현황' 정보를 그때그때 띄워주는 Dynamic Island. 디테일을 놀랍도록 생생하게 담아내는 48MP 메인 카메리. 게다가 USB-C 탑재. iPhone 15을 만나보세요.",price: "1,250,000")
                    
                    ProductCardView2(mac: "MagSafe로 믹스앤매치",picname: "magsafe1" ,description: "케이스, 카드지갑, 무선 충전기까지 간편하게 착.",price: "1,250,000")

                }
            }
            Spacer()
            
        }.background(.black)
    }
}

#Preview {
    iPhone()
}
