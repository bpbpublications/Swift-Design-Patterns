//
//  User.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

struct User {
    var id: Int
    var username: String
    var email: String
    var firstName: String?
    var lastName: String?
    
    func fullName() -> String {
        "\(firstName ?? "") \(lastName ?? "")" //Explicit return
    }

}
