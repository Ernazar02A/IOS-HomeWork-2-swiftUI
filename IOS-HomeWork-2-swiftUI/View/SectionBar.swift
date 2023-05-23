//
//  SectionBar.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct Indication {
    let imageWhite: String
    let imageBlack: String
    let name: String
}

struct SectionBar: View {
    
    let sections: [Indication] = [Indication(imageWhite: "deliveryWhite",                                              imageBlack: "deliveryBlack",
                                             name: "Delivary"),
                                  Indication(imageWhite: "takeawayWhite",                imageBlack: "takeawayBlack",
                                             name: "Takeaway"),
                                  Indication(imageWhite: "cateringWhite",                imageBlack: "cateringBlack",
                                             name: "Catering"),
                                  Indication(imageWhite: "carbsideWhite",                imageBlack: "curbsideBlack",
                                             name: "Carbside"),
                                  Indication(imageWhite: "offersWhite",                  imageBlack: "offersBlack",
                                             name: "Offers")]
    @State var selectedSection: Int = 0

    var body: some View {
        HStack {
            ForEach(0 ..< sections.count, id: \.self) { i in
                Spacer()
                SectionView(isActive: i == selectedSection, section: sections[i])
                    .onTapGesture {
                        selectedSection = i
                    }
                Spacer()
            }
            
        }
            
    }
}

struct SectionBar_Previews: PreviewProvider {
    static var previews: some View {
        SectionBar()
    }
}

struct SectionView: View {
    var isActive: Bool
    var section: Indication
    var body: some View {
            HStack {
                Image(isActive ? section.imageWhite : section.imageBlack)
                    .resizable()
                    .frame(width: 25,height: 25)
                
                if isActive {
                    CustomTextView(text: section.name, size: 10, font: .poppinsMedium,foregroundColor: .white)
                }
            }
            .padding(.all,11)
            .background(isActive ? Color.black : Color.white)
            .cornerRadius(isActive ? 20 : 15)
            .shadow(radius: isActive ? 20 : 5)
    }
}
