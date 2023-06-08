//
//  ApiModel.swift
//  IOS-HomeWork-2-swiftUI
//
//  Created by MacBook Pro on 25/5/23.
//

import Foundation

// MARK: - ProductModel
struct ProductModel: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}

// MARK: - Product
struct Product: Codable, Hashable {
    var id: Int?
    let title, description: String?
    let price: Int?
    let discountPercentage, rating: Double?
    let stock: Int?
    let brand, category: String?
    let thumbnail: String?
    let images: [String]?
    
    init(id: Int? = nil, title: String?, description: String? = nil, price: Int? = nil, discountPercentage: Double? = nil, rating: Double? = nil, stock: Int? = nil, brand: String? = nil, category: String? = nil, thumbnail: String? = nil, images: [String]? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.discountPercentage = discountPercentage
        self.rating = rating
        self.stock = stock
        self.brand = brand
        self.category = category
        self.thumbnail = thumbnail
        self.images = images
    }
}
