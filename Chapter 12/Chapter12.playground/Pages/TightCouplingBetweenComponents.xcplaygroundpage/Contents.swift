//: [Previous](@previous)

import Foundation


class Order {
    let totalAmount: Int
    init(totalAmount: Int) {
        self.totalAmount = totalAmount
    }
}
class PaymentProcessor {
    func processPayment(_ amount: Int) {
        print("processPayment: \(amount)")
    }
}

class OrderProcessor {
    let paymentProcessor = PaymentProcessor()
    
    func processOrder(order: Order) {
        paymentProcessor.processPayment(order.totalAmount)
        // Process order logic...
    }
}

let order = Order(totalAmount: 100)
let orderProcessor = OrderProcessor()
orderProcessor.processOrder(order: order)

//: [Next](@next)
