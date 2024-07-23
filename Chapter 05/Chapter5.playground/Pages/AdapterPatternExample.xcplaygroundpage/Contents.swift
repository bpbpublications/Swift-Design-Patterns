//: [Previous](@previous)

import Foundation

// Target Interface
protocol PaymentProcessor {
    func processPayment(amount: Double)
}

// Adaptee (Legacy System)
class OldPaymentProcessor {
    func pay(amount: Double) {
        print("Processing payment: $\(amount) (Legacy System)")
    }
}

// Adapter
class OldPaymentProcessorAdapter: PaymentProcessor {
    private let adaptee: OldPaymentProcessor
    
    init(adaptee: OldPaymentProcessor) {
        self.adaptee = adaptee
    }
    
    func processPayment(amount: Double) {
        adaptee.pay(amount: amount)
    }
}

// Client
class NewPaymentProcessor {
    private let paymentProvider: PaymentProcessor
    
    init(paymentProvider: PaymentProcessor) {
        self.paymentProvider = paymentProvider
    }
    
    func processPayment(amount: Double) {
        paymentProvider.processPayment(amount: amount)
    }
}

// Usage
let oldPaymentSystem = OldPaymentProcessor()
let adaptedOldPaymentSystem = OldPaymentProcessorAdapter(adaptee: oldPaymentSystem)

let newPaymentProcessor = NewPaymentProcessor(paymentProvider: adaptedOldPaymentSystem)
newPaymentProcessor.processPayment(amount: 100.0)

//: [Next](@next)
