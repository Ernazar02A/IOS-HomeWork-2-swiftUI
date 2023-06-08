//
//  ApiManager.swift
//  ApiSwiftUIProba
//
//  Created by MacBook Pro on 23/5/23.
//

import Foundation


enum RequestType {
    case get
    case post(title: String)
}
enum DataModelType {
    case model(ProductModel)
    case value(Int)
}


class ApiManager {
    static let shared = ApiManager()
    
    private  let getUrlString = "https://dummyjson.com/products"
    private let postUrlString = "https://dummyjson.com/products/add"
    
    func getDate(requestType: RequestType,completion: @escaping(Result<DataModelType, Error>) -> Void) {
        
        
        switch requestType {
        case .get:
            guard let url = URL(string: getUrlString) else {return}
            
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data else {return}
                
                do {
                    let newData = try JSONDecoder().decode(ProductModel.self, from: data)
                    completion(.success(.model(newData)))
                    
                } catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        case .post(let title):
            guard let url = URL(string: postUrlString) else {return}
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            let product = ProductModel(products: [.init(title: title)], total: 1, skip: 1, limit: 1)
            request.httpBody = try? JSONEncoder().encode(product)
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let response = response as? HTTPURLResponse else {return}
                
                do {
                    completion(.success(.value(response.statusCode)))
                } catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
}
