//
//  PasswordInput.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 11/10/22.
//

import SwiftUI

struct PasswordInput: View {
    
    @State var showPassword = false
    @Binding var password :String
    
    var body: some View {
        
        HStack(){
            if showPassword{
                TextField("Enter Password", text: $password)
                    .padding(.leading)
            }else {
                SecureField("Enter Password", text: $password).padding(.leading)
                
            }
            
            
            Button {
                showPassword.toggle()
            } label: {
                Image(systemName: showPassword ? "eye.slash" : "eye")
            }.padding(.trailing)
        }
        .frame(height: 40)
        .border(Color("Grey"))
        .autocapitalization(.none)
        
    }
}

struct PasswordInput_Previews: PreviewProvider {
    static var previews: some View {
        PasswordInput(password: .constant(""))
    }
}
