//: [Previous](@previous)

import Foundation

// Subject Protocol
protocol Image {
    func display()
}

// Real Subject
class RealImage: Image {
    private var filename: String

    init(filename: String) {
        self.filename = filename
        loadFromDisk()
    }

    private func loadFromDisk() {
        print("Loading image: \(filename)")
    }

    func display() {
        print("Displaying image: \(filename)")
    }
}

// Proxy
class NetworkImageProxy: Image {
    private var realImage: RealImage?
    private var filename: String

    init(filename: String) {
        self.filename = filename
    }

    func display() {
        if realImage == nil {
            realImage = RealImage(filename: filename)
        }
        realImage?.display()
    }
}

// Client code
let imageProxy = NetworkImageProxy(filename: "example.jpg")

// The real image is only loaded and displayed when necessary
imageProxy.display()

// Displaying again won't reload the image
imageProxy.display()

//: [Next](@next)
