//: [Previous](@previous)

import Foundation

// Function to compute Fibonacci numbers recursively
func computeFibonacci(_ number: Int) -> Int {
    if number <= 1 {
        return number
    }
    return computeFibonacci(number - 1) + computeFibonacci(number - 2)
}

// Perform heavy computation on the main thread
let result = computeFibonacci(40)
print(result)



//: [Next](@next)
