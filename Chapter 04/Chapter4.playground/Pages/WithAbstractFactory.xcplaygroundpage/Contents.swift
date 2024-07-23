//: [Previous](@previous)

import Foundation

protocol Button {
    var label: String { get }
    var color: UIColor { get }
}

class DarkModeButton: Button {
    let label: String
    let color: UIColor

    init(label: String) {
        self.label = label
        self.color = .darkGray
    }
}

class LightModeButton: Button {
    let label: String
    let color: UIColor

    init(label: String) {
        self.label = label
        self.color = .white
    }
}

protocol TextField {
    var placeholder: String { get }
    var borderColor: UIColor { get }
}

class DarkModeTextField: TextField {
    let placeholder: String
    let borderColor: UIColor

    init(placeholder: String) {
        self.placeholder = placeholder
        self.borderColor = .darkGray
    }
}

class LightModeTextField: TextField {
    let placeholder: String
    let borderColor: UIColor

    init(placeholder: String) {
        self.placeholder = placeholder
        self.borderColor = .white
    }
}

protocol UIComponentFactory {
    func createButton(label: String) -> Button
    func createTextField(placeholder: String) -> TextField
}

class DarkModeUIComponentFactory: UIComponentFactory {
    func createButton(label: String) -> Button {
        return DarkModeButton(label: label)
    }

    func createTextField(placeholder: String) -> TextField {
        return DarkModeTextField(placeholder: placeholder)
    }
}

class LightModeUIComponentFactory: UIComponentFactory {
    func createButton(label: String) -> Button {
        return LightModeButton(label: label)
    }

    func createTextField(placeholder: String) -> TextField {
        return LightModeTextField(placeholder: placeholder)
    }
}

// Client code
let darkModeFactory = DarkModeUIComponentFactory()
let lightModeFactory = LightModeUIComponentFactory()

let darkModeButton = darkModeFactory.createButton(label: "OK")
let lightModeButton = lightModeFactory.createButton(label: "Cancel")

let darkModeTextField = darkModeFactory.createTextField(placeholder: "Enter text")
let lightModeTextField = lightModeFactory.createTextField(placeholder: "Search")

//: [Next](@next)
