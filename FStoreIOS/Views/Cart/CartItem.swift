//
//  CartItem.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 13/10/22.
//

import SwiftUI

struct CartItem: View {
    
    var cartItem : Cart = CartSample
    
    var body: some View {
        ZStack {
            HStack() {
                
                AsyncImage(
                  url: URL(string: cartItem.image),
                  content: { image in
                  image
                    .resizable()
                    .frame(width: 120,height: 120)
                    .padding(.top)
                    
                }, placeholder: {
                  Image("watch")
                        .resizable()
                        .frame(width: 120,height: 120)
                        .padding(.top)
                })
                
                VStack(alignment: .leading) {
                    Text(cartItem.productName)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                        .bold().padding(.top,20)
                    
                    let price: String = String(format: "%.0f", cartItem.productPrice)
                    Text("₹ \(price)")
                        .foregroundColor(.accentColor)
                        .font(.title3)
                        .bold()
                        .padding(.top)
                        .padding(.bottom)
                    
                    ElegantButton(quantity: cartItem.quantity )
                }
                .padding(.leading)
                
                Spacer()
            }.padding()
            
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        
    }
}

struct ElegantButton:View{
    
    @State var quantity:Int = 1
    
    var body: some View{
        HStack{
            Text("Quantity")
                .foregroundColor(.secondary)
            
            Button {
                
            } label: {
                Text("-")
                    .foregroundColor(.white)
                    .frame(width: 30,height: 30)
                    .background(Color("skyblue"))
                    .cornerRadius(5)
            }
            
            Text(String(quantity))
                .foregroundColor(.black)
            
            Button {
                
            } label: {
                Text("+")
                    .foregroundColor(.white)
                    .frame(width: 30,height: 30)
                    .background(Color("skyblue"))
                    .cornerRadius(5)
            }

        }
    }
}

struct CartItem_Previews: PreviewProvider {
    static var previews: some View {
        CartItem(cartItem: CartSample)
    }
}
