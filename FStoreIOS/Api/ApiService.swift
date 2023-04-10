//
//  ApiService.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 03/10/22.
//

import Foundation

class ApiService {
    
    var BASE_URL = "https://fakestoreapi.com/"
    
    lazy var GET_PRODUCTS:String = {
        return self.BASE_URL + "products"
    }()
    
    lazy var GET_PRODUCT_BY_ID:String = {
        return self.BASE_URL + "products/"
    }()
    
    
    
    func getProducts(completion:@escaping ([ProductResponseElement]) -> ()) {
        guard let url = URL(string: GET_PRODUCTS) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let products = try! JSONDecoder().decode([ProductResponseElement].self, from: data!)
            //print(products)
            
            DispatchQueue.main.async {
                completion(products)
            }
        }
        .resume()
    }
    
    func getProductById(product_id: String, completion:@escaping (ProductResponseElement) -> ()) {
        guard let url = URL(string: GET_PRODUCT_BY_ID+product_id) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let product = try! JSONDecoder().decode(ProductResponseElement.self, from: data!)
            //print(product)
            
            DispatchQueue.main.async {
                completion(product)
            }
        }
        .resume()
    }
    
}
