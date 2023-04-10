//
//  Toolbar.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 06/10/22.
//

import SwiftUI

struct Toolbar: View {
    var body: some View {
        
        HStack{
            
            NavigationLink(destination: ProfileScreen()) {
                Image("professor")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .clipped()
            }
            
            Text("Hi, Professor")
            
            Spacer()
            
            Image(systemName: "bell.fill")
        }.padding(.horizontal)
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar()
    }
}
