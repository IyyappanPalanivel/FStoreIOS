//
//  AppManager.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 04/10/22.
//

import Foundation

import Combine

struct AppManager {
    static let Authenticated = PassthroughSubject<Bool, Never>()
    static func IsAuthenticated() -> Bool {
        return UserDefaults.standard.string(forKey: "token") != nil
    }
}
