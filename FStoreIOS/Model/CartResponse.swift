//
//  CartResponse.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 10/10/22.
//

import Foundation

// MARK: - CartResponseElement
struct CartResponseElement: Codable,Identifiable {
    let id, userID: Int
    let date: String
    let products: [Product]
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "userId"
        case date, products
        case v = "__v"
    }
}

// MARK: - Product
struct Product: Codable {
    let productID, quantity: Int

    enum CodingKeys: String, CodingKey {
        case productID = "productId"
        case quantity
    }
}

typealias CartResponse = [CartResponseElement]
