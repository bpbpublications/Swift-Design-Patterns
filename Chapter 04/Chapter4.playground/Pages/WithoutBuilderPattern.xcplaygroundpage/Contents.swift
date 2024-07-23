//: [Previous](@previous)

import Foundation

class Pizza {
    var size: String
    var crust: String
    var sauce: String?
    var cheese: String?
    var toppings: [String] = []

    init(size: String, crust: String) {
        self.size = size
        self.crust = crust
    }

    func addSauce(_ sauce: String) {
        self.sauce = sauce
    }

    func addCheese(_ cheese: String) {
        self.cheese = cheese
    }

    func addTopping(_ topping: String) {
        toppings.append(topping)
    }
}

// Client code
let myPizza = Pizza(size: "Large", crust: "Thin")
myPizza.addSauce("Tomato")
myPizza.addCheese("Mozzarella")
myPizza.addTopping("Pepperoni")
myPizza.addTopping("Mushrooms")



//: [Next](@next)
