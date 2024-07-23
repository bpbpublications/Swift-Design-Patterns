//: [Previous](@previous)

import Foundation

class NetworkManager {
    var completionHandler: (() -> Void)?

    func fetchData() {
        // Simulating a network request which captures self strongly
        completionHandler = {
            // Strongly capturing self inside the closure
            print("Fetching data... reference to self: \(self)")
        }
        // Simulating a network request delay
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            self.completionHandler?()
        }
    }

    deinit {
        print("NetworkManager is being deinitialized")
    }
}

// Usage
var manager: NetworkManager? = NetworkManager()
manager?.fetchData()

// Setting manager to nil. NetworkManager instance will not be deallocated due to the strong reference cycle.
manager = nil
//: [Next](@next)
