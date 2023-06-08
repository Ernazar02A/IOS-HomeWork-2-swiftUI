//
//  SearchBarView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 25/5/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var textFromTF: String
    var action: () -> ()
    @Binding var alertCheck: Bool
    var code: String
    var productTitle: String
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

            CustomButtonViewWithImage(action: { action() }, Image: Image(systemName:  "slider.horizontal.3"),width: 24,height: 24,foregColor: .black).padding(.horizontal).alert(isPresented: $alertCheck) {
                Alert(title: Text(productTitle),message: Text("Добавлено \(code)"))
            }
        }
    }
}

//struct SearchBarView_Previews: PreviewProvider {
//    @State var textFromTF: String = ""
//    static var previews: some View {
//        SearchBarView(textFromTF: self.$textFromTF)
//    }
//}
