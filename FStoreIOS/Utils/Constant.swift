//
//  Constant.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 07/10/22.
//

import Foundation

//Category Model and Sample Data
struct Category : Codable,Identifiable{
    let id:Int
    let imageName:String
    let categoryName:String
}

let category1 = Category(id: 1, imageName: "mobile",categoryName: "Mobile")
let category2 = Category(id: 2, imageName: "laptop",categoryName: "Laptop")

var CategroyList = [category1,category2]



//Cart Model and Sample Data
struct Cart : Codable,Identifiable{
    let id: Int
    let productId:Int
    let productName:String
    let productPrice:Double
    let quantity:Int
    let image:String
}

var CartSample = Cart(id: 1, productId: 10, productName: "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s", productPrice: 109, quantity: 2,image: "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg")
var CartSample2 = Cart(id: 2, productId: 9, productName: "WD 2TB Elements Portable External Hard Drive - USB 3.0", productPrice: 64, quantity: 1,image: "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg")

var CARTLIST = [CartSample,CartSample2]
