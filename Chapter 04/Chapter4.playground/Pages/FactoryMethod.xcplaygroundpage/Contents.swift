//: [Previous](@previous)

import Foundation

protocol Product {
    func use()
}

protocol ProductFactory {
    func createProduct() -> Product
}


class ConcreteProductA: Product {
   func use() {
        print("Using Product A")
   }
}

class ConcreteProductB: Product {
    func use() {
      print("Using Product B")
    }
}

class ConcreteProductFactoryA: ProductFactory {
    func createProduct() -> Product {
        return ConcreteProductA()
    }
}

class ConcreteProductFactoryB: ProductFactory {
    func createProduct() -> Product {
        return ConcreteProductB()
    }
}


let factoryA: ProductFactory = ConcreteProductFactoryA()
let productA = factoryA.createProduct()

productA.use()

//: [Next](@next)
