//: [Previous](@previous)

import Foundation

protocol VendingMachineState {
    func insertMoney(amount: Int)
    func ejectMoney()
    func selectProduct()
    func dispenseProduct()
}

// Step 2: Implement Concrete State Classes

class NoMoneyState: VendingMachineState {
    func insertMoney(amount: Int) {
        print("Money inserted: \(amount) cents")
        // Transition to HasMoneyState
        vendingMachine.transitionTo(state: HasMoneyState())
    }

    func ejectMoney() {
        print("No money to eject")
    }

    func selectProduct() {
        print("Insert money before selecting a product")
    }

    func dispenseProduct() {
        print("Insert money before dispensing a product")
    }
}

class HasMoneyState: VendingMachineState {
    func insertMoney(amount: Int) {
        print("Money added: \(amount) cents")
        // Accumulate money
        vendingMachine.addMoney(amount: amount)
    }

    func ejectMoney() {
        print("Money ejected: \(vendingMachine.getMoney()) cents")
        // Transition to NoMoneyState
        vendingMachine.transitionTo(state: NoMoneyState())
    }

    func selectProduct() {
        if vendingMachine.getMoney() >= vendingMachine.getProductPrice() {
            print("Product selected")
            // Transition to SoldState
            vendingMachine.transitionTo(state: SoldState())
        } else {
            print("Not enough money to buy the product")
        }
    }

    func dispenseProduct() {
        print("Insert money and select a product before dispensing")
    }
}

class SoldState: VendingMachineState {
    func insertMoney(amount: Int) {
        print("Please wait. Product is being dispensed")
    }

    func ejectMoney() {
        print("Sorry, you already selected a product. Money cannot be ejected now")
    }

    func selectProduct() {
        print("Please wait. Product is being dispensed")
    }

    func dispenseProduct() {
        print("Product dispensed. Enjoy your purchase!")
        // Deduct the price from accumulated money
        vendingMachine.deductMoney(amount: vendingMachine.getProductPrice())
        // Transition back to NoMoneyState
        vendingMachine.transitionTo(state: NoMoneyState())
    }
}

// Step 3: Implement the Context

class VendingMachine {
    private var currentState: VendingMachineState

    init() {
        currentState = NoMoneyState()
    }

    func transitionTo(state: VendingMachineState) {
        currentState = state
    }

    func insertMoney(amount: Int) {
        currentState.insertMoney(amount: amount)
    }

    func ejectMoney() {
        currentState.ejectMoney()
    }

    func selectProduct() {
        currentState.selectProduct()
    }

    func dispenseProduct() {
        currentState.dispenseProduct()
    }

    func getMoney() -> Int {
        // For simplicity, assuming the machine has a fixed amount
        50
    }

    func addMoney(amount: Int) {
        // For simplicity, not maintaining a separate balance
        print("Accumulating money: \(amount) cents")
    }

    func deductMoney(amount: Int) {
        // For simplicity, not maintaining a separate balance
        print("Deducting money: \(amount) cents")
    }

    func getProductPrice() -> Int {
        // For simplicity, assuming the product has a fixed price
        30
    }
}

// Step 4: Using the State Pattern

let vendingMachine = VendingMachine()

vendingMachine.selectProduct()
/*
Output:
Insert money before selecting a product
*/

vendingMachine.insertMoney(amount: 20)
/*
Output:
Money inserted: 20 cents
*/

vendingMachine.selectProduct()
/*
Output:
Not enough money to buy the product
*/

vendingMachine.insertMoney(amount: 30)
/*
Output:
Money inserted: 30 cents
*/

vendingMachine.selectProduct()
/*
Output:
Product selected
*/

vendingMachine.dispenseProduct()
/*
Output:
Product dispensed. Enjoy your purchase!
*/

vendingMachine.ejectMoney()
/*
Output:
Money ejected: 50 cents
*/


//: [Next](@next)
