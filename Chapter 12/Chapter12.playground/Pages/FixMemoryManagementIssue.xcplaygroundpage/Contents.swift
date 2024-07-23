//: [Previous](@previous)

import Foundation

class NetworkManager {
    var completionHandler: (() -> Void)?

    func fetchData() {
        // Simulating a network request which captures self weakly
        completionHandler = { [weak self] in
            guard let strongself = self else { return }
            print("Fetching data... reference to self: \(self)")
        }
        // Simulating a network request delay
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.completionHandler?()
        }
    }

    deinit {
        print("NetworkManager is being deinitialized")
    }
}

// Usage
var manager: NetworkManager? = NetworkManager()
manager?.fetchData()

// Setting manager to nil. NetworkManager instance will be deallocated because there is no strong reference cycle.
manager = nil


//: [Next](@next)
