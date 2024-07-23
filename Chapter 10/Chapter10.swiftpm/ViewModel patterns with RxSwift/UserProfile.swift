//
//  UserProfile.swift
//  
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

struct UserProfile: Equatable {
    let username: String
    let name: String
    let email: String
    let errorMessage: String?
    
    static let empty = UserProfile(username: "", name: "", email: "", errorMessage: nil)
    static let loading = UserProfile(username: "", name: "", email: "", errorMessage: nil)
    
    init(username: String, name: String, email: String, errorMessage: String? = nil) {
        self.username = username
        self.name = name
        self.email = email
        self.errorMessage = errorMessage
    }
    
    static func error(_ message: String) -> UserProfile {
        return UserProfile(username: "", name: "", email: "", errorMessage: message)
    }
}
