//
//  CustomButtonViewWithImage.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 20/5/23.
//

import SwiftUI

struct CustomButtonViewWithImage: View {
    var action: () -> ()
    var Image: Image
    var width: CGFloat = 20
    var height: CGFloat = 20
    var corner: CGFloat = 0
    var foregColor: Color = .accentColor
    var body: some View {
        Button {
            action()
        } label: {
            Image
                .resizable()
                .frame(width: width,height: height,alignment: .center)
                .cornerRadius(corner)
                .foregroundColor(foregColor)
        }

    }
}

struct CustomButtonViewWithImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonViewWithImage(action: {}, Image: .init(""))
    }
}
