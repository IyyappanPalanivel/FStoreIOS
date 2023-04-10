//
//  SliderModel.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 06/10/22.
//

import Foundation

struct SliderModel : Codable, Identifiable {
    let id: Int
    let imageName:String
    let ImageUrl:String
}

let sliderImage1 = SliderModel(id: 1, imageName: "watch", ImageUrl: "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/27ef43b89056e751.jpg?q=50")
let sliderImage2 = SliderModel(id: 2, imageName: "splash_logo", ImageUrl: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/vineet/Amazon-Pay-Later/Sept_22/Jupiter_22/Headers/P3_GW-editorial_2300x646._CB609056541_.jpg")
let sliderImage3 = SliderModel(id: 3, imageName: "watch", ImageUrl: "https://static.vecteezy.com/system/resources/thumbnails/004/299/835/small/online-shopping-on-phone-buy-sell-business-digital-web-banner-application-money-advertising-payment-ecommerce-illustration-search-free-vector.jpg")

let SliderImages = [sliderImage1,sliderImage2,sliderImage3]


