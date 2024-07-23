//: [Previous](@previous)

import Foundation

class User {
    var username: String
    var email: String
    var password: String
    
    init(username: String, email: String, password: String) {
        self.username = username
        self.email = email
        self.password = password
    }
    
    func saveToDatabase() {
        // Code to save user data to the database
    }
    
    func sendEmailConfirmation() {
        // Code to send email confirmation to the user
    }
}


class Report {
    var data: String
    
    init(data: String) {
        self.data = data
    }
    func generateReport() {
        // Code to generate a report
    }
    
    func saveToFile() {
        // Code to save the report data to a file
    }
}


//: [Next](@next)
