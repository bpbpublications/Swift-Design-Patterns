//: [Previous](@previous)

import Foundation

class DatabaseConnection {
    // Simulate a database connection establishment
    init() {
        print("Connecting to the database...")
    }

    func query(_ query: String) {
        // Simulate a database query
        print("Executing query: \(query)")
    }

    func close() {
        // Simulate returning the connection to the pool
        print("Returning the database connection to the pool.")
        ConnectionPool.shared.returnConnection(self)
    }
}

class ConnectionPool {
    static let shared = ConnectionPool()
    private var availableConnections: [DatabaseConnection] = []
    private var inUseConnections: [DatabaseConnection] = []

    private init() {
        // Create a pool of database connections
        for _ in 1...5 {
            availableConnections.append(DatabaseConnection())
        }
    }

    func getConnection() -> DatabaseConnection? {
        if availableConnections.isEmpty {
            print("No available connections. Please try again later.")
            return nil
        }

        let connection = availableConnections.removeFirst()
        inUseConnections.append(connection)
        return connection
    }

    func returnConnection(_ connection: DatabaseConnection) {
        if let index = inUseConnections.firstIndex(where: { $0 === connection }) {
            inUseConnections.remove(at: index)
            availableConnections.append(connection)
        }
    }
}

// Client code
if let connection1 = ConnectionPool.shared.getConnection() {
    connection1.query("SELECT * FROM users")
    connection1.close()
}

// Later in the code...
if let connection2 = ConnectionPool.shared.getConnection() {
    connection2.query("INSERT INTO orders (product, quantity) VALUES ('Widget', 10)")
    connection2.close()
}

//: [Next](@next)
