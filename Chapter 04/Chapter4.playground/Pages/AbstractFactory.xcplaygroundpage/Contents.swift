//: [Previous](@previous)

import Foundation

protocol Document {
    var content: String { get }
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

protocol DocumentFactory {
    func createRegularDocument() -> Document
    func createReport() -> Document
    func createPresentation() -> Document
}

class ConcreteDocumentFactory: DocumentFactory {
    func createRegularDocument() -> Document {
        return RegularDocument(content: "This is a regular document.")
    }
    
    func createReport() -> Document {
        return Report(title: "Monthly Report", content: "The report content goes here.")
    }
    
    func createPresentation() -> Document {
        return Presentation(slides: ["Slide 1", "Slide 2", "Slide 3"])
    }
}


let factory = ConcreteDocumentFactory()
let regularDoc = factory.createRegularDocument()
print("Regular Document: \(regularDoc.content)")

let report = factory.createReport()
print("Report Title: \((report as! Report).title)")
print("Report Content: \(report.content)")

let presentation = factory.createPresentation()
print("Presentation Slides: \(presentation.content)")



//: [Next](@next)
