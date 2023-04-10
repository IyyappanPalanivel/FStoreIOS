//
//  LandingScreen.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 06/10/22.
//

import SwiftUI

struct LandingScreen: View {
    
    @State var selected = 1
    
    var body: some View {
        
        NavigationView {
            VStack(){
                
                if selected == 1 {
                    HomeScreen()
                }else if selected == 2 {
                    CartScreen()
                }else if selected == 3 {
                    ProfileScreen()
                }
                
                Spacer()
                
                CustomTabView(selected: $selected)
            }
        }
    }
}

struct LandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen()
    }
}
