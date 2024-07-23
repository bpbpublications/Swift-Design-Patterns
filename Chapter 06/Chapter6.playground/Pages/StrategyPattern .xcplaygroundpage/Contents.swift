//: [Previous](@previous)

import Foundation

protocol PaymentStrategy {
    func pay(amount: Double)
}

class CreditCardPayment: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) via Credit Card")
    }
}

class PayPalPayment: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) via PayPal")
    }
}

class PaymentContext {
    private var strategy: PaymentStrategy

    init(strategy: PaymentStrategy) {
        self.strategy = strategy
    }

    func setPaymentStrategy(strategy: PaymentStrategy) {
        self.strategy = strategy
    }

    func performPayment(amount: Double) {
        strategy.pay(amount: amount)
    }
}

let creditCardPayment = CreditCardPayment()
let payPalPayment = PayPalPayment()

let paymentContext = PaymentContext(strategy: creditCardPayment)
paymentContext.performPayment(amount: 100.0)

paymentContext.setPaymentStrategy(strategy: payPalPayment)
paymentContext.performPayment(amount: 50.0)


//: [Next](@next)
