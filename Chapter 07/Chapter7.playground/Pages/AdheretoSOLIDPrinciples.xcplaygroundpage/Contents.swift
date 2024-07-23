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

protocol Transaction {
    func process(sender: User, receiver: User, amount: Double)
}

class BasicTransaction: Transaction {
    func process(sender: User, receiver: User, amount: Double) {
        if sender.balance >= amount {
            sender.balance -= amount
            receiver.balance += amount
            sender.notify(message: "Transaction successful.")
            receiver.notify(message: "You received a payment.")
        } else {
            sender.notify(message: "Transaction failed: Insufficient funds.")
        }
    }
}

class AdvancedTransaction: Transaction {
    func process(sender: User, receiver: User, amount: Double) {
        // Additional processing for advanced transactions
        // ...
    }
}



//: [Next](@next)
