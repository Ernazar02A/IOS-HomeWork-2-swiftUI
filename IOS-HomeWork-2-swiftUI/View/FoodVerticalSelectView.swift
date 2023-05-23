//
//  FoodVerticalSelectView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct FoodVerticalSelectView: View {
    
    let name: String
    let type: String
    let image: String
    let price: String
    let stars: String
    let timeReady: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 160,height: 180)
                .cornerRadius(30)
                .foregroundColor(.white)
                .shadow(radius: 5)
            VStack {
                Image(image)
                    .offset(y:-60)
                VStack(alignment: .leading) {
                    CustomTextView(text: name,
                                   size: 16,
                                   font: .poppinsBold)
                    CustomTextView(text: type,
                                   size: 10,
                                   font: .poppinsLight,foregroundColor: Color(red: 0.58, green: 0.58, blue: 0.58))
                    CustomTextView(text: "Delivery: FREE • Minimum: $\(price)",              size: 10,
                                   font: .poppinsLight,foregroundColor: Color(red: 0.58, green: 0.58, blue: 0.58))
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable().frame(width: 10,height: 10)
                        CustomTextView(text: stars,
                                       size: 12,
                                       font: .poppinsBold)
                        Circle()
                            .frame(width: 3.5,height: 3.5)
                            .foregroundColor(Color.gray)
                        Image(systemName: "clock")
                        CustomTextView(text: "\(timeReady) Mins",
                                       size: 12,
                                       font: .poppinsBold)
                    }
                }
                .padding(.top,-80)
            }
        }
        .padding(.top,60)
    }
}


struct FoodVerticalSelectView_Previews: PreviewProvider {
    static var previews: some View {
        FoodVerticalSelectView(name: "Tony Roma's", type: "Ribs & Steaks", image: "romaFoodImage", price: "20", stars: "4.5", timeReady: "35")
    }
}
