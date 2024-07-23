//: [Previous](@previous)

import Foundation
import XCTest

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

class TransactionProcessor {
    private let transaction: Transaction
    private let notifiable: Notifiable
    init(transaction: Transaction, notifiable: Notifiable) {
        self.transaction = transaction
        self.notifiable = notifiable
    }
    func processTransaction(sender: User, receiver: User, amount: Double) {
        self.transaction.process(sender: sender, receiver: receiver, amount: amount)
        self.notifiable.notify(message: "Transaction Processed")
    }
}


class TransactionProcessorTests: XCTestCase {
    func testTransactionProcessing() {
        // Arrange
        let sender = User(username: "Alice", balance: 1500)
        let receiver = User(username: "Bob", balance: 500)
        let transaction: Transaction = BasicTransaction()

        // Act
        let notificationService: Notifiable = User(username: "NotificationService", balance: 0)
        let processor = TransactionProcessor(transaction: transaction, notifiable: notificationService)
        processor.processTransaction(sender: sender, receiver: receiver, amount: 100)

        // Assert
        // Check if the transaction and notification were processed correctly
        // ...
    }
}

//: [Next](@next)
