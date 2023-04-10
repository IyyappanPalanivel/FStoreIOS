//
//  SplashScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 04/10/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        VStack {
                    // 2.
                    if self.isActive {
                        // 3.
                        ContentView()
                    } else {
                        // 4.
                        Splash()
                            .background(Color("AccentColor"))
                    }
                }
                // 5.
                .onAppear {
                    // 6.
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        // 7.
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
        
        
        
    }
}


struct Splash: View {
    
    var body: some View {
        ZStack {
            
            VStack() {
                
                Text("Find Your Gadget")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                
                Image("splash_logo")
                    .resizable()
                    .scaledToFit()
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
