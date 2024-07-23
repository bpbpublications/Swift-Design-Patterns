//: [Previous](@previous)

import Foundation

class Document {
    var content: String

    init(content: String) {
        self.content = content
    }

    func copy() -> Document {
        return Document(content: self.content)
    }
}

// Client code
let originalDocument = Document(content: "Original document content")

let copy1 = originalDocument.copy()
copy1.content = "Modified content for copy 1"

let copy2 = originalDocument.copy()
copy2.content = "Modified content for copy 2"


//: [Next](@next)
