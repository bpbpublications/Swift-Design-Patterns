//: [Previous](@previous)

import Foundation

protocol Document {
    var content: String { get }
}
protocol DocumentFactory {
    func createDocument() -> Document
}

class RegularDocument: Document {
    let content: String

    init(content: String) {
        self.content = content
    }
}

class Report: Document {
    let content: String
    let title: String

    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}

class Presentation: Document {
    let slides: [String]
    var content: String {
            return slides.joined(separator: "\n")
    }

    init(slides: [String]) {
        self.slides = slides
    }
}

class RegularDocumentFactory: DocumentFactory {
    func createDocument() -> Document {
        return RegularDocument(content: "This is a regular document.")
    }
}

class ReportFactory: DocumentFactory {
    func createDocument() -> Document {
        return Report(title: "Monthly Report", content: "The report content goes here.")
    }
}

class PresentationFactory: DocumentFactory {
    func createDocument() -> Document {
        return Presentation(slides: ["Slide 1", "Slide 2", "Slide 3"])
    }
}

// Client code
let regularDocument = RegularDocumentFactory().createDocument()
let reportDocument = ReportFactory().createDocument()
let presentationDocument = PresentationFactory().createDocument()



//: [Next](@next)
