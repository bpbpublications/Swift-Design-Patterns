//: [Previous](@previous)

import Foundation

protocol Workable {
    func work()
}

protocol Eatable {
    func eat()
}

protocol Sleepable {
    func sleep()
}


class OfficeWorker: Workable, Eatable {
    func work() {
        // Implement work behavior
    }

    func eat() {
        // Implement eating behavior
    }
}

class Robot: Workable {
    func work() {
        // Implement work behavior
    }
}

class Sleeper: Sleepable {
    func sleep() {
        // Implement sleeping behavior
    }
}


//: [Next](@next)
