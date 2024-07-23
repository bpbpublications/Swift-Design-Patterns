//: [Previous](@previous)

import Foundation

class UserSessionManager {
    var sessions: [UserSession] = []

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
let sessionManager = UserSessionManager()

sessionManager.createUserSession(username: "user1")
sessionManager.createUserSession(username: "user2")

// Later in the code...
sessionManager.closeUserSession(username: "user1")

