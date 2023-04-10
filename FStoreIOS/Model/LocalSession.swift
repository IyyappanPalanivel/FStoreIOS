//
//  LocalSessonViewModel.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 04/10/22.
//

import Foundation

final class LocalSession: ObservableObject {
    
    @Published var isLoggedIn = IsAuthenticated()
    
    static func IsAuthenticated() -> Bool {
        return UserDefaults.standard.string(forKey: "token") != nil
    }
}
