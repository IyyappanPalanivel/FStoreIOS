//
//  ProfileScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 03/10/22.
//

import SwiftUI

struct ProfileScreen: View {
    
    var body: some View {
        ZStack {
            
            VStack(){
                
                VStack() {
                    Text("My Profile")
                        .font(.title)
                        .fontWeight(.bold)

                    VStack(){
                        
                        Image("professor")
                            .resizable()
                            .frame(width: 100,height: 100)
                            .clipShape(Circle())
                            .clipped()
                            .padding(.top)
                        
                        Text("Professor")
                        
                        
                        HStack(alignment: .top) {
                            Image(systemName: "pin.circle")
                                .foregroundColor(.secondary)
                            
                            Text("Address: 43 Oxford Road M13 4GR Manchester, UK")
                                .foregroundColor(.secondary)
                        }.padding(5)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    .shadow(radius: 1)
                    
                    NavigationLink {
                        EditProfileScreen()
                    } label: {
                        CustomButton(title: "Edit Profile")
                            .padding(.bottom)
                    }
                    
                    NavigationLink {
                        EditProfileScreen()
                    } label: {
                        CustomButton(title: "Shopping Address")
                            .padding(.bottom)
                    }
                    
                    NavigationLink {
                        EditProfileScreen()
                    } label: {
                        CustomButton(title: "Order History")
                            .padding(.bottom)
                    }
                    
                    Button {
                        logout()
                    } label: {
                        CustomButton(title: "Logout")
                            .padding(.bottom)
                    }

                    
                    Spacer()
                }
                
                
            }
            
        }
        .background(Color("Grey"))
    }
    
    func logout() {
        @AppStorage("isLoggedin") var isLoggedIn: Bool = false
        isLoggedIn = false
    }
}



struct CustomButton:View{
    var title:String
    var body: some View{
        HStack{
            Text(title)
                .bold()
                .padding()
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right")
                .padding(.trailing)
                .foregroundColor(.black)
        }
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
