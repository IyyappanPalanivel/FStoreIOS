//
//  HomeScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 30/09/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var search_text = ""
    @State var categoryList = CategroyList
    @State var products: [ProductResponseElement] = [ProductSample,ProductSample]
    @State var sliderImages = SliderImages
    
    var body: some View {
        VStack{
            Toolbar()
            
            ScrollView(){
                
                SearchBar(text: search_text)
                
                VStack{
                    
                    GeometryReader { geometry in
                        ImageSlider(numberOfImages: sliderImages.count) {
                            ForEach(sliderImages) { image in
                                AsyncImage(url: URL(string: image.ImageUrl)) { Image in
                                    Image
                                        .resizable()
                                        .frame(width: geometry.size.width, height: geometry.size.height)
                                        .clipped()
                                } placeholder: {
                                    Image("splash_logo")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: geometry.size.width, height:geometry.size.height)
                                        .clipped()
                                }
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width, height: 200, alignment: .center)
                    
                    
                    
                    ShopByCategory(categoryList: categoryList)
                    
                    ShopByProduct(produstList: products)
                }
            }.onAppear{
                ApiService().getProducts { products in
                    self.products = products
                }
            }
            
            
            Spacer()
        }
    }
}

struct ShopByCategory :View{
    
    var categoryList: [Category]
    
    var body: some View{
        VStack{
            //Categories Section
            HStack(){
                Text("Shop by Category")
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("View More")
                })
            }.padding(.horizontal)
                .padding(.top)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack(){
                    ForEach(categoryList) { list in
                        
                        CategoryItem(category: list)
                            .frame(width: UIScreen.main.bounds.width/4)
                            .padding(.vertical)
                            .padding(.leading)
                        
                    }
                }
            }
        }
    }
}

struct ShopByProduct :View{
    
    var produstList: [ProductResponseElement]
    
    var body: some View{
        VStack{
            //Categories Section
            HStack(){
                Text("Shop by Products")
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("View More")
                })
            }.padding(.horizontal)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack(){
                    ForEach(produstList) { list in
                        
                        NavigationLink(destination: ProductDetails(product_id: String(list.id))) {
                            
                            VStack{
                                //ProductCell(product: list)
                                ProductItem(product: list)
                                    .frame(width: UIScreen.main.bounds.width/2,height: 250)
                                    .padding(.vertical)
                                    .padding(.leading)
                            }
                        }
                        
                        
                    }
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider{
    static var previews: some View {
        HomeScreen()
    }
}
