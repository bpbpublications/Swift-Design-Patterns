//: [Previous](@previous)

import Foundation

// Step 1: Define the Handler Protocol

protocol SupportHandler {
    var nextHandler: SupportHandler? { get set }
    func handleRequest(ticket: SupportTicket)
}

// Step 2: Implement Concrete Handler Classes

class Level1Support: SupportHandler {
    var nextHandler: SupportHandler?

    func handleRequest(ticket: SupportTicket) {
        if ticket.priority == .low {
            print("Level 1 Support handled the ticket: \(ticket.description)")
        } else {
            nextHandler?.handleRequest(ticket: ticket)
        }
    }
}

class Level2Support: SupportHandler {
    var nextHandler: SupportHandler?

    func handleRequest(ticket: SupportTicket) {
        if ticket.priority == .medium {
            print("Level 2 Support handled the ticket: \(ticket.description)")
        } else {
            nextHandler?.handleRequest(ticket: ticket)
        }
    }
}

class Level3Support: SupportHandler {
    var nextHandler: SupportHandler?

    func handleRequest(ticket: SupportTicket) {
        if ticket.priority == .high {
            print("Level 3 Support handled the ticket: \(ticket.description)")
        } else {
            print("Unable to handle the ticket: \(ticket.description)")
        }
    }
}

// Step 3: Define the Request Object

struct SupportTicket {
    let description: String
    let priority: TicketPriority
}

enum TicketPriority {
    case low
    case medium
    case high
}

// Step 4: Using the Chain of Responsibility Pattern

let level1Support = Level1Support()
let level2Support = Level2Support()
let level3Support = Level3Support()

level1Support.nextHandler = level2Support
level2Support.nextHandler = level3Support

let ticket1 = SupportTicket(description: "Printer not working", priority: .low)
let ticket2 = SupportTicket(description: "Software crash", priority: .medium)
let ticket3 = SupportTicket(description: "Server outage", priority: .high)


//: [Next](@next)
