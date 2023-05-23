//
//  NavBarView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct NavBarView: View {
    @State var selection: Int? = nil
    var body: some View {
        HStack {
            CustomButtonViewWithImage(action: {}, Image: Image("menu"),width: 33,height: 20)
            Spacer()
            VStack {
                CustomTextView(text: "Delivering to",
                               size: 12,
                               font: .poppinsReguler,
                               foregroundColor: .black.opacity(0.5))
                .padding(.trailing,23)
                HStack {
                    CustomTextView(text: "Manas Ave",
                                   size: 16,
                                   font: .poppinsMedium,
                                   backgroundColor: .clear)
                    NavigationLink {
                        LocationViewScreen()
                    } label: {
                        Image("delivaryMap")
                    }

//                    NavigationLink( destination: LocationViewScreen(),
//                                    tag: 1,
//                                    selection: $selection) {
//                        CustomButtonViewWithImage(action: {
//                            self.selection = 1
//                        }, Image: Image("delivaryMap"),width: 12,height: 7.2)
//                    }
                    
                }
            }
            .foregroundColor(Color.black)
            Spacer()
            Button {} label: {
                VStack {
                    Text("1")
                        .font(.system(size: 10))
                        .foregroundColor(Color.white)
                    Image(systemName: "cart")
                        .foregroundColor(.white)
                }
            }
            .frame(width: 50,height: 47)
            .background(Color.black).cornerRadius(15)
            .shadow(radius: 5)
        }.padding(.horizontal)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
