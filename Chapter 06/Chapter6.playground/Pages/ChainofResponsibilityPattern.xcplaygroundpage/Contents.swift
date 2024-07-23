//: [Previous](@previous)

import Foundation

protocol Handler {
    var nextHandler: Handler? { get set }
    func handleRequest(request: String)
}

class ConcreteHandlerA: Handler {
    var nextHandler: Handler?

    func handleRequest(request: String) {
        if request == "A" {
            print("Handler A processed the request")
        } else {
            nextHandler?.handleRequest(request: request)
        }
    }
}

class ConcreteHandlerB: Handler {
    var nextHandler: Handler?

    func handleRequest(request: String) {
        if request == "B" {
            print("Handler B processed the request")
        } else {
            nextHandler?.handleRequest(request: request)
        }
    }
}

class Client {
    private var handlerChain: Handler

    init(handlerChain: Handler) {
        self.handlerChain = handlerChain
    }

    func makeRequest(request: String) {
        handlerChain.handleRequest(request: request)
    }
}

let handlerA = ConcreteHandlerA()
let handlerB = ConcreteHandlerB()

handlerA.nextHandler = handlerB

let client = Client(handlerChain: handlerA)

client.makeRequest(request: "A") // Output: Handler A processed the request
client.makeRequest(request: "B") // Output: Handler B processed the request
client.makeRequest(request: "C") // No handler processed the request



//: [Next](@next)
