//
//  BottomTab.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 03/10/22.
//

import SwiftUI

struct BottomTab: View {
    var body: some View {
        
        TabView {
                    HomeScreen()
                        .tabItem {
                            Label("Home", systemImage: "homekit")
                        }

                    ProfileScreen()
                        .tabItem {
                            Label("Profile", systemImage: "person")
                        }
                }
    }
}

struct BottomTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomTab()
    }
}
