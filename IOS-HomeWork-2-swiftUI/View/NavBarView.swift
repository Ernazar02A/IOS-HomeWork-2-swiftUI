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
            Button {} label: {
                Image("menu")
            }
            Spacer()
            VStack {
                Text("Delivering to")
                    .font(.system(size: 12))
                    .foregroundColor(Color.black
                        .opacity(0.5))
                    .padding(.trailing, 23)
                HStack {
                    Text("Manas Ave")
                        .font(.system(size: 16))
                    NavigationLink( destination: LocationViewScreen(),
                                    tag: 1,
                                    selection: $selection) {
                        Button {
                            print("tapped")
                            self.selection = 1
                        } label: {
                            Image(systemName: "chevron.down")
                        }
                    }
                    
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
