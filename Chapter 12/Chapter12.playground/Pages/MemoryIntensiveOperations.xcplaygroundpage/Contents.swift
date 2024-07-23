//: [Previous](@previous)

import Foundation

import XCTest

var largeArray = [Int](repeating: 0, count: 1000000)
for iterator in 0..<1000000 {
    largeArray[iterator] = iterator
}


//: [Next](@next)
