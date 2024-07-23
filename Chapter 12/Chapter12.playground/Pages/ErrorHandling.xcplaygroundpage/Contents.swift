//: [Previous](@previous)

import Foundation

enum FileError: Error {
    case fileNotFound
    case fileCorrupted
}

func readFile() throws -> String {
    // Simulating an error condition
    throw FileError.fileNotFound
}

// Improper error handling
let fileContents = try! readFile()
print(fileContents)




//: [Next](@next)
