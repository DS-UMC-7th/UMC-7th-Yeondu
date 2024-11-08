//
//  LoginModels.swift
//  kream_r
//
//  Created by 신연주 on 11/3/24.
//

import Foundation

class userModel {
    private let userDefaults = UserDefaults.standard
    private let email: String = "이메일"
    private let password: String = "비밀번호"
    
    // 유저 이메일 저장
    public func saveUserEmail(_ email: String) {
        userDefaults.set(email, forKey: userEmailKey)
    }
        
    // 유저 비밀번호 저장
    public func saveUserPassword(_ password: String) {
        userDefaults.set(password, forKey: userPasswordKey)
    }
        
    // 유저 이메일 로드
    public func loadUserEmail() -> String? {
        return userDefaults.string(forKey: userEmailKey)
    }
        
    // 유저 비밀번호 로드
    public func loadUserPassword() -> String? {
        return userDefaults.string(forKey: userPasswordKey)
    }
}
