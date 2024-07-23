//: [Previous](@previous)

import Foundation

class User {
    var username: String
    var balance: Double

    init(username: String, balance: Double) {
        self.username = username
        self.balance = balance
    }
}

class TransactionProcessor {
    func processTransaction(sender: User, receiver: User, amount: Double) {
        // Process the transaction
        if sender.balance >= amount {
            sender.balance -= amount
            receiver.balance += amount

            // Notify sender and receiver
            NotificationService.sendNotification(user: sender, message: "Transaction successful.")
            NotificationService.sendNotification(user: receiver, message: "You received a payment.")
        } else {
            // Notify sender about insufficient funds
            NotificationService.sendNotification(user: sender, message: "Transaction failed: Insufficient funds.")
        }
    }
}

class NotificationService {
    static func sendNotification(user: User, message: String) {
        // Send notification
        // ...
    }
}


//: [Next](@next)
