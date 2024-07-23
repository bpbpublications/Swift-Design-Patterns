//: [Previous](@previous)

import Foundation

// Flyweight protocol
protocol TextFormatting {
    func applyFormatting(to text: String) -> String
}

// Concrete Flyweight
class CharacterFormatting: TextFormatting {
    private let font: String
    private let size: Int
    private let color: String

    init(font: String, size: Int, color: String) {
        self.font = font
        self.size = size
        self.color = color
    }

    func applyFormatting(to text: String) -> String {
        "\(text) [Font: \(font), Size: \(size), Color: \(color)]"
    }
}

// Flyweight Factory
class FormattingFactory {
    private var flyweights: [String: TextFormatting] = [:]

    func getCharacterFormatting(font: String, size: Int, color: String) -> TextFormatting {
        let key = "\(font)-\(size)-\(color)"
        if let existingFlyweight = flyweights[key] {
            return existingFlyweight
        } else {
            let newFlyweight = CharacterFormatting(font: font, size: size, color: color)
            flyweights[key] = newFlyweight
            return newFlyweight
        }
    }
}

// Client code
let formattingFactory = FormattingFactory()

let char1Formatting = formattingFactory.getCharacterFormatting(font: "Arial", size: 12, color: "Black")
let char2Formatting = formattingFactory.getCharacterFormatting(font: "Arial", size: 12, color: "Black")
let char3Formatting = formattingFactory.getCharacterFormatting(font: "Times New Roman", size: 14, color: "Red")

let textWithChar1Formatting = char1Formatting.applyFormatting(to: "Hello")
let textWithChar2Formatting = char2Formatting.applyFormatting(to: "World")
let textWithChar3Formatting = char3Formatting.applyFormatting(to: "Flyweight")

print(textWithChar1Formatting)
print(textWithChar2Formatting)
print(textWithChar3Formatting)

//: [Next](@next)
