//
//  WelcomeScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 29/09/22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack() {
                    
                    Text("Find Your Gadget")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    
                    Image("splash_logo")
                        .resizable()
                        .scaledToFit()
                    
                    NavigationLink(destination: LoginScreen(), label: {
                        Text("Get Started")
                            .frame(maxWidth: .infinity,maxHeight: 50)
                            .background()
                            .cornerRadius(10)
                            .padding(20)
                        
                    })
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
            }.background(Color("AccentColor"))
        }

    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
