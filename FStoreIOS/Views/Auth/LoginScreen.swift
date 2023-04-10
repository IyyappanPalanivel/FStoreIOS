//
//  LoginScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 30/09/22.
//

import SwiftUI
import UIKit

struct LoginScreen: View {
    
    @State private var showingAlert = false
    @State private var isLoggedin = false
    @State var errorMessage : String = "Please Enter valid Email"
    
    @State var email: String = ""
    @State var password: String = ""
    @State private var showPassword: Bool = false
    
    var body: some View {
        
        ZStack {
            
            VStack() {
                
                Text("Welcome Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(40)
                
                VStack(alignment: .leading,spacing: 20){
                    Text("Login")
                        .font(.title2)
                        .bold()
                        .padding(.top,40)
                    
                    
                    TextField("Enter Email", text: $email)
                        .frame(height: 40)
                        .padding(.leading)
                        .border(Color("Grey"))
                        .autocapitalization(.none)
                    
                    PasswordInput(password: $password)
                        
                    
                    Text("Forgot Password?")
                        .foregroundColor(.accentColor)
                        .padding(.top,20)
                    
                    Spacer()
                    
                    
                    Button(action: loginAction, label: {
                                                LoginButton()
                                            })
                                            .alert(errorMessage, isPresented: $showingAlert) {
                                                Button("OK", role: .cancel) { }
                    }
                    
                    Text("Create Account")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.accentColor)
                        .padding(.top)
                    
                    Spacer()
                    
                }
                .padding(.all)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background()
                    .ignoresSafeArea()
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
            
        }.background(Color("AccentColor"))
    }
    
    func isValid() -> Bool{
        
        if(email.isEmpty){
            showingAlert = true
            errorMessage = "Please Enter valid Email"
            return false
        }else if(password.isEmpty){
            showingAlert = true
            errorMessage = "Please Enter valid Password"
            return false
        }else if(!isValidEmail(email)){
            showingAlert = true
            errorMessage = "Please Enter valid Email"
            return false
        }else if (password.count < 8){
            showingAlert = true
            errorMessage = "Password must contain minimum 8 characters"
            return false
        }
        
        return true
    }
    
    func loginAction() {
        if(isValid()){
            @AppStorage("isLoggedin") var isLoggedIn: Bool = false
            isLoggedIn = true
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
}

struct LoginButton :View{
    var body: some View{
        Text("Login")
            .frame(maxWidth: .infinity,maxHeight: 50)
            .background(Color("AccentColor"))
            .cornerRadius(10)
            .padding(.top,40)
            .foregroundColor(.white)
            .bold()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
