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
}

class UserRepository {
    func saveToDatabase(user: User) {
        // Code to save user data to the database
    }
}

class EmailService {
    func sendEmailConfirmation(user: User) {
        // Code to send email confirmation to the user
    }
}

class Report {
    var data: String
    init(data: String) {
        self.data = data
    }
}

class ReportGenerator {
    func generateReport(report: Report) {
        // Code to generate a report
    }
}

class FileSaver {
    func saveToFile(data: String) {
        // Code to save data to a file
    }
}
