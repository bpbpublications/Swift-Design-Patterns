//: [Previous](@previous)

import Foundation

protocol Target {
    func request()
}

class Adaptee {
    func specificRequest() {
        print("Adaptee's specific request")
    }
}


class Adapter: Target {
    private let adaptee: Adaptee

    init(adaptee: Adaptee) {
        self.adaptee = adaptee
    }

    func request() {
        adaptee.specificRequest()
    }
}

let adaptee = Adaptee()
let adapter = Adapter(adaptee: adaptee)

adapter.request() // Calls the Adaptee's specificRequest through the Adapter


//: [Next](@next)
