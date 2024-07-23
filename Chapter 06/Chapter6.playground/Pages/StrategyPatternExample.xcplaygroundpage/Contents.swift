//: [Previous](@previous)

import Foundation

// Step 1: Define the Strategy Protocol

protocol SortingStrategy {
    func sort<T: Comparable>(_ array: inout [T])
}

// Step 2: Implement Concrete Strategies

class BubbleSort: SortingStrategy {
    func sort<T: Comparable>(_ array: inout [T]) {
        let elementCount = array.count
        for i in 0..<elementCount {
            for j in 0..<elementCount-i-1 {
                if array[j] > array[j+1] {
                    array.swapAt(j, j+1)
                }
            }
        }
    }
}

class QuickSort: SortingStrategy {
    func sort<T: Comparable>(_ array: inout [T]) {
        array = quickSort(array)
    }

    private func quickSort<T: Comparable>(_ array: [T]) -> [T] {
        guard array.count > 1 else { return array }
        
        let pivot = array[array.count/2]
        let less = array.filter { $0 < pivot }
        let equal = array.filter { $0 == pivot }
        let greater = array.filter { $0 > pivot }
        
        return quickSort(less) + equal + quickSort(greater)
    }
}

// Step 3: Implement the Context

class Sorter<T: Comparable> {
    private var sortingStrategy: SortingStrategy

    init(sortingStrategy: SortingStrategy) {
        self.sortingStrategy = sortingStrategy
    }

    func setSortingStrategy(_ sortingStrategy: SortingStrategy) {
        self.sortingStrategy = sortingStrategy
    }

    func performSort(_ array: inout [T]) {
        sortingStrategy.sort(&array)
    }
}

// Step 4: Using the Strategy Pattern

var numbers = [5, 2, 8, 1, 7]

let bubbleSorter = Sorter<Int>(sortingStrategy: BubbleSort())
bubbleSorter.performSort(&numbers)
print("Sorted using Bubble Sort: \(numbers)")

let quickSorter = Sorter<Int>(sortingStrategy: QuickSort())
quickSorter.performSort(&numbers)
print("Sorted using Quick Sort: \(numbers)")


//: [Next](@next)
