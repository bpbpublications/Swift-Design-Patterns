//: [Previous](@previous)

import Foundation

protocol DocumentPrototype {
    func copy() -> DocumentPrototype
}

class Document: DocumentPrototype {
    var content: String

    init(content: String) {
        self.content = content
    }

    func copy() -> DocumentPrototype {
        return Document(content: self.content)
    }
}

// Client code
let originalDocument = Document(content: "Original document content")

let copy1 = originalDocument.copy() as! Document
copy1.content = "Modified content for copy 1"

let copy2 = originalDocument.copy() as! Document
copy2.content = "Modified content for copy 2"

//: [Next](@next)
