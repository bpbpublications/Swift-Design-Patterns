//: [Previous](@previous)

import Foundation

class Shape {
    func draw() {
        fatalError("Subclasses must implement draw()")
    }
}

class Rectangle: Shape {
    override func draw() {
        print("Drawing a rectangle")
    }
}

class Circle: Shape {
    override func draw() {
        print("Drawing a circle")
    }
}



//: [Next](@next)
