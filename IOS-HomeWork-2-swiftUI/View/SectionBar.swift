//
//  SectionBar.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 18/5/23.
//

import SwiftUI

struct Indication {
    let image: String
    let name: String
}

struct SectionBar: View {
    
    let sections: [Indication] = [Indication(image: "bicycle", name: "Delivary"),
                                  Indication(image: "bag.fill", name: "Takeaway"),
                                  Indication(image: "mug.fill", name: "Catering"),
                                  Indication(image: "car.fill", name: "Carbside"),
                                  Indication(image: "banknote.fill", name: "Offers")]
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
                Image(systemName: section.image)
                    .resizable()
                    .frame(width: 25,height: 25)
                    .foregroundColor(isActive ? .white : .black)
                
                if isActive { Text(section.name)
                        .foregroundColor(.white)
                        .font(.system(size: 10,weight: .medium))
                }
            }
            .padding(.all,11)
            .background(isActive ? Color.black : Color.white)
            .cornerRadius(isActive ? 20 : 15)
            .shadow(radius: isActive ? 20 : 5)
    }
}
