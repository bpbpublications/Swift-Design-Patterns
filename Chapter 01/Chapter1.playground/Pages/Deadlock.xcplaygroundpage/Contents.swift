//: [Previous](@previous)

import Foundation

//Problem
let pizzaQueue = DispatchQueue(label: "PizzaQueue") //Serial Queue for pizza related tasks
let condimentQueue = DispatchQueue(label: "CondimentQueue") //Serial Queue for condiment related tasks

pizzaQueue.async {
    print("Rahul: Waiting for ketchup")
    condimentQueue.sync {
        print("Rahul: Got ketchup, eating pizza")
    }
}

condimentQueue.async {
    print("Amit: Waiting for pizza cutter")
    pizzaQueue.sync {
        print("Amit: Got pizza cutter, slicing pizza")
    }
}

//Solution - Please comment above code to run this one, otherwise will get error

let pizzaQueue = DispatchQueue(label: "pizzaQueue")
let condimentQueue = DispatchQueue(label: "condimentQueue", attributes: .concurrent) // Make queue2 concurrent

pizzaQueue.async {
    print("Rahul: Waiting for ketchup")
    
    // Use async on queue2 instead of sync
    condimentQueue.async {
        print("Rahul: Got ketchup, eating pizza")
    }
}

condimentQueue.async {
    print("Amit: Waiting for pizza cutter")
    
    // Use async on queue1 instead of sync
    pizzaQueue.async {
        print("Amit: Got pizza cutter, slicing pizza")
    }
}

