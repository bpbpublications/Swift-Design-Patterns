//: [Previous](@previous)

import Foundation

class UserSessionManager {
    static let shared = UserSessionManager() // Singleton instance
    var sessions: [UserSession] = []

    private init() {} // Ensure no other instances can be created

    func createUserSession(username: String) {
        let session = UserSession(username: username)
        sessions.append(session)
    }

    func closeUserSession(username: String) {
        if let index = sessions.firstIndex(where: { $0.username == username }) {
            sessions.remove(at: index)
        }
    }
}

struct UserSession {
    let username: String
}

// Client code
UserSessionManager.shared.createUserSession(username: "user1")
UserSessionManager.shared.createUserSession(username: "user2")

// Later in the code...
UserSessionManager.shared.closeUserSession(username: "user1")

