//
//  FoodHorizontalSelectedView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct FoodHorizontalSelectedView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 285,height: 130)
                .cornerRadius(30)
                .foregroundColor(.white)
                .shadow(radius: 5)
            Image("paul")
                .offset(x:210,y: 8)
            VStack(alignment: .leading) {
                CustomTextView(text: "Paul",
                               size: 16,
                               font: .poppinsBold)
                CustomTextView(text: "French Pasta",
                               size: 10,
                               font: .poppinsLight,
                               foregroundColor: Color(red: 0.58, green: 0.58, blue: 0.58))
                CustomTextView(text: "Delivery: FREE • Minimum: $0",
                               size: 10,
                               font: .poppinsLight,
                               foregroundColor: Color(red: 0.58, green: 0.58, blue: 0.58))
                
            }.padding(.leading,15)
            HStack {
                Image(systemName: "star.fill")
                    .resizable().frame(width: 10,height: 10)
                CustomTextView(text: "4.2",
                               size: 12,
                               font: .poppinsBold)
                Circle()
                    .frame(width: 3.5,height: 3.5)
                    .foregroundColor(Color.gray)
                Image(systemName: "clock")
                CustomTextView(text: "25 Mins",
                               size: 12,
                               font: .poppinsBold)
            }.offset(x:90,y: 50)
        }.padding(.leading,7)
    }
}


struct FoodHorizontalSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        FoodHorizontalSelectedView()
    }
}
