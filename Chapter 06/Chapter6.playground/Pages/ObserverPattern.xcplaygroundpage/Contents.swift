//: [Previous](@previous)

import Foundation

protocol Subject {
    func addObserver(_ observer: Observer)
    func removeObserver(_ observer: Observer)
    func notifyObservers()
}

protocol Observer: AnyObject {
    func update()
}

class ConcreteSubject: Subject {
    private var observers: [Observer] = []

    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }

    func removeObserver(_ observer: Observer) {
        if let index = observers.firstIndex(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }

    func notifyObservers() {
        for observer in observers {
            observer.update()
        }
    }

    // Additional methods and properties specific to the subject
    // that may trigger notifications
}

class ConcreteObserver: Observer {
    var id: String = UUID().uuidString
    
    func update() {
        print("Observer has been notified and updated.")
        // Additional logic to handle the update
    }
}

let subject = ConcreteSubject()

let observerA = ConcreteObserver()
let observerB = ConcreteObserver()

subject.addObserver(observerA)
subject.addObserver(observerB)

subject.notifyObservers()


//: [Next](@next)
