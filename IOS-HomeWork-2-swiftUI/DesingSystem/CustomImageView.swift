//
//  CustomImageView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 22/5/23.
//

import SwiftUI

struct CustomImageView: View {
    var name: String
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: width,height: height)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView(name: "", width: 10, height: 10)
    }
}
