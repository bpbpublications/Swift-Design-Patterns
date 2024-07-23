//: [Previous](@previous)

import Foundation

// Abstraction
protocol Shape {
    var color: String { get set }
    func draw()
}

// Refined Abstraction
class Circle: Shape {
    var color: String
    init(color: String) {
        self.color = color
    }
    func draw() {
        print("Drawing a \(color) circle")
    }
}

class Square: Shape {
    var color: String
    init(color: String) {
        self.color = color
    }
    func draw() {
        print("Drawing a \(color) square")
    }
}

// Implementation
protocol DrawingAPI {
    func drawShape(color: String)
}

// Concrete Implementation for iOS
class DrawingAPIiOS: DrawingAPI {
    func drawShape(color: String) {
        print("iOS: Drawing a \(color) shape")
    }
}

// Concrete Implementation for macOS
class DrawingAPIMacOS: DrawingAPI {
    func drawShape(color: String) {
        print("macOS: Drawing a \(color) shape")
    }
}

// Linking Abstraction with Implementation
class ShapeWithAPI: Shape {
    var color: String
    private let drawingAPI: DrawingAPI
    
    init(color: String, drawingAPI: DrawingAPI) {
        self.color = color
        self.drawingAPI = drawingAPI
    }
    
    func draw() {
        drawingAPI.drawShape(color: color)
    }
}

// Client Code
let circle = Circle(color: "red")
let square = Square(color: "blue")

let iosCircle = ShapeWithAPI(color: circle.color, drawingAPI: DrawingAPIiOS())
let macSquare = ShapeWithAPI(color: square.color, drawingAPI: DrawingAPIMacOS())

circle.draw()
square.draw()

iosCircle.draw()
macSquare.draw()

//: [Next](@next)
