//
//  SearchBar.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 07/10/22.
//

import SwiftUI

struct SearchBar: View {
    
    @State var text = ""
    
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass").font(.body)
                .padding(.horizontal)
            TextField("Search Product", text: $text)
        }
        .frame(height: 40)
        .background(Color("Grey"))
        .cornerRadius(20)
        .padding(10)
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
