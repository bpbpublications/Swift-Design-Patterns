//
//  MockUserManager.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

class MockUserManager: UserManager {
    override func fetchUser(withId id: Int, completion: @escaping (User?) -> Void) {
        let user = User(id: id, username: "mock_user", email: "mock@example.com")
        completion(user)
    }
}
