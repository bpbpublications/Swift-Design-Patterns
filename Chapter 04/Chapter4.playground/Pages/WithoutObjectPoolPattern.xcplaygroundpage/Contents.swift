//: [Previous](@previous)

import Foundation

class DatabaseConnection {
    init() {
        // Simulate database connection establishment
        print("Connecting to the database...")
    }

    func query(_ query: String) {
        // Simulate a database query
        print("Executing query: \(query)")
    }

    func close() {
        // Simulate closing the database connection
        print("Closing the database connection...")
    }
}

// Client code
let connection1 = DatabaseConnection()
connection1.query("SELECT * FROM users")
connection1.close()

// Later in the code...
let connection2 = DatabaseConnection()
connection2.query("INSERT INTO orders (product, quantity) VALUES ('Widget', 10)")
connection2.close()

//: [Next](@next)
