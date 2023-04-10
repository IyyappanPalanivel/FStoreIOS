//
//  EditProfileScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 10/10/22.
//

import SwiftUI
import PhotosUI

struct EditProfileScreen: View {
    
    @State var address = ""
    @State var firstname = ""
    @State var lastname = ""
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
        ZStack {
            
            VStack(){
                
                VStack() {
                    Text("My Profile")
                        .font(.title)
                        .fontWeight(.bold)

                    VStack(){
                        
                        PhotosPicker(
                                selection: $selectedItem,
                                matching: .images,
                                photoLibrary: .shared()) {
                                    
                                    if let selectedImageData,
                                               let uiImage = UIImage(data: selectedImageData) {
                                                Image(uiImage: uiImage)
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                            .clipShape(Circle())
                                            .clipped()
                                            .padding(.top)
                                            }
                                    else {
                                        Image("professor")
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                            .clipShape(Circle())
                                            .clipped()
                                            .padding(.top)
                                    }
                                    
                                }.onChange(of: selectedItem) { newItem in
                                    Task {
                                        // Retrive selected asset in the form of Data
                                        if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                            selectedImageData = data
                                        }
                                    }
                                }
                        
                        Text("Professor")
                            .padding(.bottom)
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    .shadow(radius: 1)
                    
                    TextField("First Name", text: $firstname)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                    
                    TextField("Last Name", text: $lastname)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                        .padding(.top)
                        
                    
                    TextField("Address", text: $address)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Update Profile")
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
        .background(Color("Grey"))
    }
}

struct EditProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileScreen()
    }
}
