//
//  ContentView.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isLoggedin") var isLoggedIn: Bool = false
    
    var body: some View {
        
        Group{
            if isLoggedIn {
                LandingScreen()
            }else{
                WelcomeScreen()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
