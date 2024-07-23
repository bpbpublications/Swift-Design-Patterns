//: [Previous](@previous)

import Foundation

protocol Subject {
    func request()
}

class RealSubject: Subject {
    func request() {
        print("Real subject handles the request.")
    }
}

class Proxy: Subject {
    private var realSubject: RealSubject?

    func request() {
        if realSubject == nil {
            realSubject = RealSubject()
        }
        // Additional functionality can be added here.
        realSubject?.request()
    }
}

let proxy = Proxy()
proxy.request() // The request is forwarded to the real subject via the proxy.

//: [Next](@next)
