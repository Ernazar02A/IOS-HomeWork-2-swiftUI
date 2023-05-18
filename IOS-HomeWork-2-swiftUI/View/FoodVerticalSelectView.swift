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
                VStack {
                    Text(name)
                        .font(.system(size: 16,weight: .bold))
                    Text(type)
                        .font(.system(size: 10,weight: .light))
                        .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    Text("Delivery: FREE • Minimum: $\(price)")
                        .font(.system(size: 10,weight: .light))
                        .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable().frame(width: 10,height: 10)
                        Text(stars).font(.system(size: 12,weight: .bold))
                        Circle()
                            .frame(width: 3.5,height: 3.5)
                            .foregroundColor(Color.gray)
                        Image(systemName: "clock")
                        Text("\(timeReady) Mins").font(.system(size: 12,weight: .bold))
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
