//
//  LoginModels.swift
//  kream_r
//
//  Created by 신연주 on 11/3/24.
//

import Foundation

class userModel {
    private let userDefaults = UserDefaults.standard
    private let email: String = ""
    private let password: String = ""

    public func saveEmail(_ text: String) {
        userDefaults.set(text, forKey: email)
    }

    public func savePassword(_ text: String) {
        userDefaults.set(text, forKey: password)
    }

    public func loadEmail() -> String? {
        return userDefaults.string(forKey: email)
    }

    public func loadPassword() -> String? {
        return userDefaults.string(forKey: password)
    }
}

