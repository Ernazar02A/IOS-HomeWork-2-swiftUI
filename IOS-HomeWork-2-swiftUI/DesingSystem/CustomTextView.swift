//
//  CustomTextView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 20/5/23.
//

import SwiftUI

enum CustomFont: String {
    case poppinsLight = "Poppins-Light"
    case poppinsReguler = "Poppins-Reguler"
    case poppinsMedium = "Poppins-Medium"
    case poppinsSemiBold = "Poppins-SemiBold"
    case poppinsBold = "Poppins-Bold"
}

struct CustomTextView: View {
    var text: String
    var size: CGFloat
    var font: CustomFont
    var foregroundColor: Color = .black
    var backgroundColor: Color = .clear
    var body: some View {
        Text(text)
            .font(Font.custom(font.rawValue, size: size))
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(text: .init(), size: .init(), font: .poppinsBold)
    }
}
