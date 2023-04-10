//
//  CartScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 10/10/22.
//

import SwiftUI

struct CartScreen: View {
    
    @State var cartList : [Cart] = CARTLIST
    
    var body: some View {
        ZStack {
            
            VStack(){
                
                VStack() {
                    Text("My Cart")
                        .font(.title)
                        .fontWeight(.bold)

                    ScrollView{
                        ForEach(cartList) { list in
                            
                            NavigationLink {
                                ProductDetails(product_id: String(list.productId))
                            } label: {
                                CartItem(cartItem: list)
                                    .padding(.bottom)
                            }

                        }
                        .padding(.top)
                        .padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    //Bottom container
                    HStack{
                        Text("Total")
                            .bold()
                        Spacer()
                        
                        Text("₹ 200")
                            .foregroundColor(.accentColor)
                            .font(.title3)
                            .bold()
                            .padding()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    
                    Button(action: {}, label: {
                        Text("Proceed to Checkout")
                            .frame(maxWidth: .infinity,maxHeight: 50)
                            .background(Color("AccentColor"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .bold()
                    })
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                    
                }
                
                
            }
            
        }
    }
}

struct CartScreen_Previews: PreviewProvider {
    static var previews: some View {
        CartScreen()
    }
}
