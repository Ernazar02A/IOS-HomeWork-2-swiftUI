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
}
