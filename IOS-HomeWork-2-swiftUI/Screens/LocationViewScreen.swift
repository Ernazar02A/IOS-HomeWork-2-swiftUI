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
                        Text("Choose delivery location")
                            .font(.system(size: 18,weight: .semibold))
                        ExtractedView(image: "Region",
                                      text: "Deliver to current location",
                                      text2: "Manas ave")
                        ExtractedView(image: "Region",
                                      text: "Deliver to different location",
                                      text2: "Choose location on the map ")
                        Text("Saved Addresses")
                            .font(.system(size: 18,weight: .semibold))
                            .padding(.top,15)
                        
                        ExtractedView(dot3: true, image: "house",
                                      text: "Home",
                                      text2: "Jukeev-Pudovkin St 43, apt #12    ")
                        ExtractedView(dot3: true, image: "work",
                                      text: "Work",
                                      text2: "Manas Ave 32, floor 7, office #703")
                        ExtractedView(dot3: true,line: false, image: "hotel",
                                      text: "Hotel",
                                      text2: "Frunze St 50, floor 10, room #1011")
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
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
                }
            }
        }
}

struct LocationViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        LocationViewScreen()
    }
}

struct ExtractedView: View {
    
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
                        Text(text)
                            .font(.system(size: 16,weight: .medium))
                        Text(text2)
                            .font(.system(size: 12,weight: .regular)).foregroundColor(.black.opacity(0.5))
                    }
                    if dot3 {
                        Button {} label: {
                            Image("3dot")
                        }.offset(x:110)
                    }
                }
            }
            if line {
                Rectangle()
                    .frame(width: 351,height: 1)
                    .foregroundColor(.black.opacity(0.5))
            }
        }
        .padding()
        
    }
}
