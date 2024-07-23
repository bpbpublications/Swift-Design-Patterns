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
}

class PizzaBuilder {
    private var pizza: Pizza

    init(size: String, crust: String) {
        pizza = Pizza(size: size, crust: crust)
    }

    func addSauce(_ sauce: String) -> PizzaBuilder {
        pizza.sauce = sauce
        return self
    }

    func addCheese(_ cheese: String) -> PizzaBuilder {
        pizza.cheese = cheese
        return self
    }

    func addTopping(_ topping: String) -> PizzaBuilder {
        pizza.toppings.append(topping)
        return self
    }

    func build() -> Pizza {
        return pizza
    }
}

// Client code
let myPizza = PizzaBuilder(size: "Large", crust: "Thin")
    .addSauce("Tomato")
    .addCheese("Mozzarella")
    .addTopping("Pepperoni")
    .addTopping("Mushrooms")
    .build()

//: [Next](@next)
