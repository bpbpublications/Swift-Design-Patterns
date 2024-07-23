//
//  UserViewModel.swift
//
//
//  Created by Mihir Das on 18/07/24.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var users: [User] = []

    init() {
        fetchUsers()
    }

    func fetchUsers() {
        // Simulated API call or data fetch
        let mockUsers = [
            User(id: 1, name: "John Doe", email: "john@example.com"),
            User(id: 2, name: "Jane Smith", email: "jane@example.com"),
            User(id: 3, name: "Alice Johnson", email: "alice@example.com")
        ]
        self.users = mockUsers
    }
}
