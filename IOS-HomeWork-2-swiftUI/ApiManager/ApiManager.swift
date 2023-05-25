//
//  ApiManager.swift
//  ApiSwiftUIProba
//
//  Created by MacBook Pro on 23/5/23.
//

import Foundation


class ApiManager {
    static let shared = ApiManager()
    
    let urlString = "https://dummyjson.com/products"
    
    func getDate(completion: @escaping(Result<ProductModel, Error>) -> Void) {
        guard let url = URL(string: urlString) else {return}
        
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data else {return}
            
            do {
                let newData = try JSONDecoder().decode(ProductModel.self, from: data)
                completion(.success(newData))
                
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
