//: [Previous](@previous)

import Foundation

class Product {
    var part1: String?
    var part2: String?
    var part3: String?
}


class ProductBuilder {
    private var product = Product()

    func buildPart1(part1: String) -> Self {
        product.part1 = part1
        return self
    }

    func buildPart2(part2: String) -> Self {
        product.part2 = part2
        return self
    }

    func buildPart3(part3: String) -> Self {
        product.part3 = part3
        return self
    }

    func build() -> Product {
        return product
    }
}

let builder = ProductBuilder()
let product = builder
    .buildPart1(part1: "Part 1")
    .buildPart2(part2: "Part 2")
    .build()







//: [Next](@next)
