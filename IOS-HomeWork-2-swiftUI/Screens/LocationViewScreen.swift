//
//  LocationViewScreen.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct LocationViewScreen: View {
    @State private var selectedTab: Tab = .house
    var body: some View {
        
            VStack {
                ZStack {
                    VStack(alignment: .leading) {
                        CustomTextView(text: "Choose delivery location",
                                       size: 18,
                                       font: .poppinsSemiBold).padding(.top,35)
                        TextCardView(image: "Region",
                                      text: "Deliver to current location",
                                      text2: "Manas ave")
                        TextCardView(image: "Region",
                                      text: "Deliver to different location",
                                      text2: "Choose location on the map ")
                        CustomTextView(text: "Saved Addresses",             size: 18,
                                       font: .poppinsSemiBold).padding(.top,15)
                        
                        TextCardView(dot3: true, image: "house",
                                      text: "Home",
                                      text2: "Jukeev-Pudovkin St 43, apt #12    ")
                        TextCardView(dot3: true, image: "work",
                                      text: "Work",
                                      text2: "Manas Ave 32, floor 7, office #703")
                        TextCardView(dot3: true,line: false, image: "hotel",
                                      text: "Hotel",
                                      text2: "Frunze St 50, floor 10, room #1011")
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                }
                
                ZStack {
                    Color.gray.ignoresSafeArea(.all)
                    VStack {
                        VStack {
                            FoodHorizontalSelectedView()
                        }.padding(.trailing,50)
                        CustomTabBar(selectedTab: $selectedTab)
                    }
                    Rectangle().foregroundColor(.white.opacity(0.7)).ignoresSafeArea(.all)
                }.background(.ultraThinMaterial)
            }
        }
}

struct LocationViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        LocationViewScreen()
    }
}

struct TextCardView: View {
    
    var dot3: Bool = false
    
    var line: Bool = true
    
    let image: String
    let text: String
    let text2: String
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 20,height: 20)
                HStack {
                    VStack(alignment: .leading ) {
                        CustomTextView(text: text, size: 16, font: .poppinsMedium)
                        CustomTextView(text: text2, size: 12, font: .poppinsReguler,foregroundColor: .black.opacity(0.5))
                    }
                    if dot3 {
                        CustomButtonViewWithImage(action: {}, Image: Image("3dot"),width: 3,height: 18).offset(x:110)
                    }
                }
            }
            if line {
                Divider()
            }
        }
        .padding(.horizontal,15)
        .padding(.vertical,10)
        
    }
}
