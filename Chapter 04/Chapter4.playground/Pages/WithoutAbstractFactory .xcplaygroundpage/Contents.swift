//: [Previous](@previous)

import Foundation

class Button {
    let label: String
    let color: UIColor

    init(label: String, color: UIColor) {
        self.label = label
        self.color = color
    }
}

class TextField {
    let placeholder: String
    let borderColor: UIColor

    init(placeholder: String, borderColor: UIColor) {
        self.placeholder = placeholder
        self.borderColor = borderColor
    }
}

// Client code
let darkModeButton = Button(label: "OK", color: .darkGray)
let lightModeButton = Button(label: "Cancel", color: .white)

let darkModeTextField = TextField(placeholder: "Enter text", borderColor: .darkGray)
let lightModeTextField = TextField(placeholder: "Search", borderColor: .white)

//: [Next](@next)
