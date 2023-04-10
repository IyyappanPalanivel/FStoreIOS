//
//  UserAuth.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 04/10/22.
//

import Combine

class UserAuth: ObservableObject {
    @Published var isLoggedin = false     // published property to update view

    func login() {
        // login request... on success:
        self.isLoggedin = true
    }

    func logout() {
        // login request... on success:
        self.isLoggedin = false
    }
}
