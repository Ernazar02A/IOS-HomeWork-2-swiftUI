//
//  SwiftUIView.swift
//  ApiSwiftUIProba
//
//  Created by MacBook Pro on 24/5/23.
//

import SwiftUI
import Kingfisher

struct ProductVerticalSelectView: View {
    
    let name: String
    let type: String
    let image: KFImage
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
                image
                    .resizable()
                    .frame(width: 150,height: 150)
                    .cornerRadius(100)
                    .offset(y:-70)
                VStack(alignment: .leading) {
                    CustomTextView(text: name,
                                   size: 16,
                                   font: .poppinsBold).frame(width: 150)
                    CustomTextView(text: type,
                                   size: 10,
                                   font: .poppinsLight)
                    CustomTextView(text: "Delivery: FREE • Minimum: $\(price)",
                                   size: 10,
                                   font: .poppinsLight)
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


struct ProductVerticalSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ProductVerticalSelectView(name: "Tony Roma's fre frf r re f", type: "Ribs & Steaks", image: .init(URL(string: "")), price: "20", stars: "4.5", timeReady: "35")
    }
}
