//
//  ProductResponse.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 03/10/22.
//

import Foundation

// MARK: - ProductResponseElement
struct ProductResponseElement: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating

}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

typealias ProductResponse = [ProductResponseElement]

//Sample Data
var ProductSample = ProductResponseElement(id: 1, title: "Apple", price: 2000, description: "Series 6, Red", category: "Watch", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rating(rate: 0.0, count: 1))
