import Foundation

//Functions

func greet(name: String) {
    print("Hello, \(name)!")
}

//Type Safety with functions
func add(x: Int, y: Int) -> Int {
    return x + y
}

let result = add(x: 5, y: 3)  // The compiler checks that both x and y are Ints

//Closure
let addClosure = { (a: Int, b: Int) -> Int in
    return a + b
}
let result = addClosure(3, 4)  // The result is 7

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let added = calculate(a: 5, b: 3, operation: addClosure)  // The result is 8
