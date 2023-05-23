//
//  CustomTabBar.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case creditcard
    case message
    case person
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                    Spacer()
                    Image(systemName: tab.rawValue)
                        .resizable()
                        .padding(.all,15)
                        .frame(width: 50,height: 50)
                        .background(selectedTab == tab ? Color(red: 0.21, green: 0.19, blue: 0.19) : .black)
                        .cornerRadius(100)
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    
                    Spacer()
                    
                }
            }
            .frame(width: UIScreen.main.bounds.size.width / 1.13, height: 75)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(30)
            .shadow(color: .black.opacity(0.60), radius: 20, x: 0, y: 10)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
