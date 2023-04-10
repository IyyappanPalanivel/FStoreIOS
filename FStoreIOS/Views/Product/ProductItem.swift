//
//  ProductItem.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 03/10/22.
//

import SwiftUI

struct ProductItem: View {
    
    var product : ProductResponseElement
    
    var body: some View {
        
        VStack(){
            
            
            AsyncImage(
              url: URL(string: product.image),
              content: { image in
              image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top)
            }, placeholder: {
              Image("watch")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding(.top)
            })
              .frame(width: 100, height: 100)
            
            Text(product.title)
                .foregroundColor(.black)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .bold().padding(.top,20)
                .padding(5)
            
            Text(product.description)
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(5)
            
            let price: String = String(format: "%.0f", product.price)
            Text("₹ \(price)")
                .foregroundColor(.accentColor)
                .font(.title3)
                .bold()
                .padding(.top)
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(product: ProductResponseElement(id: 1, title: "Apple", price: 2000, description: "Series 6, Red", category: "Watch", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rating(rate: 0.0, count: 1)))
    }
}
