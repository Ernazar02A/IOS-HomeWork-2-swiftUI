//
//  ContentView.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 17/5/23.
//

import SwiftUI
import Kingfisher

struct MainViewScreen: View {
    @State private var selectedTab: Tab = .house
    
    @State private var data: [Product] = []
    
    @State private var showingAlert = false
    
    @State private var codeStatus: Int = 0
    
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
                    
                    SearchBarView(textFromTF: $textFromTF, action: {
                        let checkAlert = postApiUpdate(title: textFromTF)
                        showingAlert = checkAlert
                        print(codeStatus)
                    }, alertCheck: $showingAlert, code: "\(codeStatus)", productTitle: textFromTF)
                    .padding(.leading,5)
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(data, id: \.self) { result in
                                NavigationLink {
                                    DetailViewScreen(product: result, image: getImage(url: result.thumbnail ?? ""))
                                } label: {
                                    ProductVerticalSelectView(name: result.title ?? "" ,
                                                              type: result.brand ?? "",
                                                              image:getImage(url: result.thumbnail ?? ""),
                                                              price: String(result.price ?? 0),
                                                              stars: String(result.rating ?? 0),
                                                              timeReady: "10").padding(.horizontal,5)
                                }
                            }
                        }
                        .foregroundColor(.black)
                        .padding()
                    }
                    FoodHorizontalSelectedView()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
        }.onAppear {
            getApiUpdate()
            //postApiUpdate(title: textFromTF)
        }
        
    }
    private func postApiUpdate(title: String) -> Bool{
        guard title != "" else {return false}
        ApiManager.shared.getDate(requestType: .post(title: title)) { result in
            switch result {
            case .success(.value(let statusCode)):
                DispatchQueue.main.async {
                    self.codeStatus = statusCode
                    print(statusCode)
                }
            case .failure(let error):
                print(error.localizedDescription)
            default:
                break
            }
        }
        return true
    }
    
    private func getApiUpdate() {
        ApiManager.shared.getDate(requestType: .get) { result in
            switch result {
            case .success(.model(let data)):
                DispatchQueue.main.async {
                    self.data = data.products ?? []
                    print(data)
                }
            case .failure(let error):
                print(error.localizedDescription)
            default:
                break
            }
        }
    }

    private func getImage(url: String) -> KFImage {
        let urlImage = URL(string: url)
        let kfImage = KFImage(urlImage)
        return kfImage
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewScreen()
    }
}


