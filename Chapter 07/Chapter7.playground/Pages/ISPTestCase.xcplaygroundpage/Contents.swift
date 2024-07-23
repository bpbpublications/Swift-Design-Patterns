//: [Previous](@previous)

import Foundation

protocol Notifiable {
    func notify(message: String)
}

class User: Notifiable {
    var username: String
    var balance: Double

    init(username: String, balance: Double) {
        self.username = username
        self.balance = balance
    }

    func notify(message: String) {
        // Send user-specific notification
        // ...
    }
}

class NotifiableTests: XCTestCase {
    func testUserNotification() {
        // Arrange
        let user = User(username: "John", balance: 1000)

        // Act
        user.notify(message: "Test Notification")

        // Assert
        // Check if the user received the notification
        // ...
    }
}

//: [Next](@next)
