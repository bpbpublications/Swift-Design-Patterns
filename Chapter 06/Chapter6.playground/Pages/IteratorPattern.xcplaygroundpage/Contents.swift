//: [Previous](@previous)

import Foundation

protocol Iterator {
    associatedtype Element
    func next() -> Element?
    func hasNext() -> Bool
}

class ArrayIterator<T>: Iterator {
    typealias Element = T
    private var array: [T]
    private var index: Int = 0

    init(array: [T]) {
        self.array = array
    }

    func next() -> T? {
        guard index < array.count else { return nil }
        defer { index += 1 }
        return array[index]
    }

    func hasNext() -> Bool {
        index < array.count
    }
}

protocol Iterable {
    associatedtype IteratorType: Iterator
    func createIterator() -> IteratorType
}

class ArrayCollection<T>: Iterable {
    typealias IteratorType = ArrayIterator<T>
    private var elements: [T]

    init(elements: [T]) {
        self.elements = elements
    }

    func createIterator() -> ArrayIterator<T> {
        ArrayIterator(array: elements)
    }
}


let arrayCollection = ArrayCollection(elements: [1, 2, 3, 4, 5])
let arrayIterator = arrayCollection.createIterator()

while arrayIterator.hasNext() {
    if let element = arrayIterator.next() {
        print(element)
    }
}


//: [Next](@next)
