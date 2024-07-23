//: [Previous](@previous)

import Foundation

class Document {
    let content: String

    init(content: String) {
        self.content = content
    }
}

class Report {
    let content: String
    let title: String

    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}

class Presentation {
    let slides: [String]

    init(slides: [String]) {
        self.slides = slides
    }
}

// Client code
let document = Document(content: "This is a regular document.")
let report = Report(title: "Monthly Report", content: "The report content goes here.")
let presentation = Presentation(slides: ["Slide 1", "Slide 2", "Slide 3"])


//: [Next](@next)
