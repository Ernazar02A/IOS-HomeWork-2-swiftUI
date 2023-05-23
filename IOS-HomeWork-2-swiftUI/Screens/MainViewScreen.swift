//
//  ContentView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 17/5/23.
//

import SwiftUI

struct MainViewScreen: View {
    @State private var selectedTab: Tab = .house
    
    private let foods:[Food] = [
        Food(name: "Tony Roma's", type: "Ribs & Steaks", image: "romaFoodImage", price: "20", stars: "4.5", timeReady: "35"),
        Food(name: "Momos", type: "Japanese", image: "momosFoodImage", price: "10", stars: "4.0", timeReady: "30"),
        Food(name: "Ramen", type: "Ramen & Eggs", image: "ramen", price: "15", stars: "3.7", timeReady: "15")]
    
    
    @State var textFromTF: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.96, green: 0.96, blue: 0.96).ignoresSafeArea(.all)
                VStack(alignment: .leading,spacing: 15) {
                    NavBarView()
                    SectionBar()
                    
                    CustomTextView(text: "56 stores open",
                                   size: 16, font: .poppinsMedium,
                                   backgroundColor: .clear)
                        .padding(.leading)
                    
                    SearchBarView(textFromTF: $textFromTF).padding(.leading,5)
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(foods,id: \.self) { result in
                                FoodVerticalSelectView(name: result.name, type: result.type, image: result.image, price: result.price, stars: result.stars, timeReady: result.timeReady)
                            }
                        }
                    }
                    FoodHorizontalSelectedView()
                    CustomTabBar(selectedTab: $selectedTab)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewScreen()
    }
}

struct SearchBarView: View {
    @Binding var textFromTF: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Find restaurant by name", text: $textFromTF)
            }
            .padding(.all)
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)

            CustomButtonViewWithImage(action: {}, Image: Image(systemName:  "slider.horizontal.3"),width: 24,height: 24,foregColor: .black).padding(.horizontal)
        }
    }
}
