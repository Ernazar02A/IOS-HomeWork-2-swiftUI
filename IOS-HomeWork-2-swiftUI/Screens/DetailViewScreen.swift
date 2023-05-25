//
//  DetailViewScreen.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 25/5/23.
//

import SwiftUI
import Kingfisher

struct DetailViewScreen: View {
    
    var product: Product?
    var image: KFImage?
    var body: some View {
        
        VStack {
            if let product = product {
            Spacer()
            VStack {
                CustomTextView(text: product.category!,
                               size: 25,
                               font: .poppinsMedium)
                .padding(.horizontal)
//                Text(product.category!)
//                    .padding(.horizontal)
//                    .font(.system(size: 25,weight: .medium))
            }
            .padding()
            Spacer()
            image!
                .resizable()
            //.aspectRatio( contentMode: .fit)
                .frame(width: UIScreen.main.bounds.size.width / 1.1,height: UIScreen.main.bounds.size.width / 1.4)
                .cornerRadius(20)
                .padding(.horizontal)
            VStack {
                CustomTextView(text: product.brand!,
                               size: 25,
                               font: .poppinsSemiBold)
//                Text(product.brand! )
//                    .font(.system(size: 25,weight: .semibold))
                Divider()
                CustomTextView(text: product.title!,
                               size: 25,
                               font: .poppinsReguler)
//                Text(product.title!)
//                    .font(.system(size: 25,weight: .regular))
                Divider()
                CustomTextView(text: product.description!,
                               size: 15,
                               font: .poppinsReguler)
//                Text(product.description!)
                Divider()
                HStack {
                    CustomTextView(text: String(product.id!),
                                   size: 15,
                                   font: .poppinsSemiBold)
                    //Text(String(product.id!))
                    HStack {
                        Image(systemName: "star")
                        Text(String(product.rating! ))
                    }.padding(.horizontal)
                    CustomTextView(text: "$" + String(product.price! ),
                                   size: 15,
                                   font: .poppinsSemiBold)
                    //Text("$" + String(product.price! ))
                }
                

                
            }
            .frame(width: UIScreen.main.bounds.size.width / 1.1)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
            .padding(.vertical)
            
            Spacer()
            
            Button {} label: {
                Text("Buy")
            }
            .foregroundColor(.black)
            .frame(width: 150,height:50)
            .background(Color.yellow)
            .cornerRadius(15)
            .shadow(radius: 5)
            Spacer()
            }
        }
    }
}

struct DetailViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewScreen()
    }
}
