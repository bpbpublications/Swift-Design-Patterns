//: [Previous](@previous)

import Foundation

protocol Shape {
    func draw()
}

extension Shape {
    func draw() {
        print("Drawing a shape")
    }
}

struct Rectangle: Shape {
    // No need to implement draw() unless customization is needed
}

struct Circle: Shape {
    // No need to implement draw() unless customization is needed
}



//: [Next](@next)
