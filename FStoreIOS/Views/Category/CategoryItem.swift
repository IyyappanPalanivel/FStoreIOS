//
//  CategoryItem.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 10/10/22.
//

import SwiftUI

struct CategoryItem: View {
    
    var category = Category(id: 1, imageName: "watch",categoryName: "Mobile")
    
    var body: some View {
        VStack(alignment: .center){
            Image(category.imageName)
                .resizable()
                .frame(width: 70,height: 70)
                .padding()
            Text(category.categoryName)
                .padding(.bottom)
        }
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    
    static var previews: some View {
        let category = Category(id: 1, imageName: "watch",categoryName: "Mobile")
        
        CategoryItem(category: category)
    }
}
