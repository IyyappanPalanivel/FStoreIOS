//
//  CustomTabView.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 06/10/22.
//

import SwiftUI

struct TabItem: Codable,Identifiable {
    let id:Int
    let title:String
    let imageName:String
}

let home = TabItem(id: 1, title: "Home", imageName: "homekit")
let cart = TabItem(id: 2, title: "Cart", imageName: "cart")
let profile = TabItem(id: 3, title: "Profile", imageName: "person")


struct CustomTabView: View {
    
    @Binding var selected:Int
    var tabs = [home,cart,profile]
    
    var body: some View {
        
        HStack(){
            ForEach(tabs) { tab in
                
                Spacer()
                
                Button(action: {
                    self.selected = tab.id
                }, label: {
                    VStack(spacing: 10){
                        Image(systemName: tab.imageName)
                            .resizable()
                            .frame(width: 30,height: 30)
                            .scaledToFit()
                            
                            .foregroundColor( self.selected == tab.id ? .accentColor : .black)
                            
                        //Text(tab.title)
                    }
                })
                
                Spacer()
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {

    static var previews: some View {
        CustomTabView(selected: .constant(1))
    }
}
