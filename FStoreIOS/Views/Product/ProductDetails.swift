//
//  ProdudtDetails.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 04/10/22.
//

import SwiftUI


struct ProductDetails: View {
    
    @State var product = ProductSample
    
    @State var product_id : String
    
    var body: some View {
        
        ZStack{
            
            VStack {
                //Toolbar
                HStack{
                    BackButton()
                    Spacer()
                    Image(systemName: "heart")
                }.padding()
                
                //Main content
                ScrollView {
                    VStack {
                        
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
                                .aspectRatio(contentMode: .fit)
                                .padding(.top)
                        })
                        .frame(maxWidth: .infinity,maxHeight: 250)
                        
                        Text(product.title)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .bold().padding(.top,20)
                            .padding(5)
                        
                        Text(product.description)
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                            .padding(5)
                        
                        Spacer()
                    }
                }
                
                //Bottom container
                HStack{
                    Text("Total")
                        .bold()
                    Spacer()
                    let price: String = String(format: "%.0f", product.price)
                    Text("₹ \(price)")
                        .foregroundColor(.accentColor)
                        .font(.title3)
                        .bold()
                        .padding()
                }
                .padding(.leading)
                .padding(.trailing)
                
                
                Button(action: {}, label: {
                    Text("Add to Cart")
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
        }.onAppear{
            ApiService().getProductById(product_id: product_id, completion: {
                product in
                self.product = product
            })
        }
        .navigationBarBackButtonHidden()

    }
}

struct ProductDetails_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductDetails(product_id: "1")
    }
}
