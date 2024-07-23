//: [Previous](@previous)

import Foundation

class Context {
    private var currentState: State

    init(initialState: State) {
        self.currentState = initialState
    }

    func request() {
        currentState.handle(context: self)
    }

    func changeState(newState: State) {
        self.currentState = newState
    }
}

protocol State {
    func handle(context: Context)
}

class StateA: State {
    func handle(context: Context) {
        print("State A handling the request")
        // Additional state-specific behavior
        context.changeState(newState: StateB())
    }
}

class StateB: State {
    func handle(context: Context) {
        print("State B handling the request")
        // Additional state-specific behavior
        context.changeState(newState: StateA())
    }
}

let initialState = StateA()
let context = Context(initialState: initialState)

context.request() // Output: State A handling the request
context.request() // Output: State B handling the request
context.request() // Output: State A handling the request




//: [Next](@next)
