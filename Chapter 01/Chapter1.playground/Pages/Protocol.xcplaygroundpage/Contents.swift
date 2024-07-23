import Foundation

protocol Character {
    func move()
    func attack()
    func talk()
}

//Extension

struct Car {
    var brand: String
    var year: Int
}

extension Car {
    func calculateAge(currentYear: Int) -> Int {
        return currentYear - year
    }
}


protocol Health {
    var healthPoints: Int { get set }
    func takeDamage(amount: Int)
    func heal(amount: Int)
}

class Player: Character, Health {
    var healthPoints = 100

    func move() {
        // Code for moving the player
    }

    func attack() {
        // Code for player attacking
    }

    func talk() {
        // Code for player talking
    }

    func takeDamage(amount: Int) {
        healthPoints -= amount
    }

    func heal(amount: Int) {
        healthPoints += amount
    }
}

class Enemy: Character, Health {
    var healthPoints = 50

    func move() {
        // Code for enemy moving
    }

    func attack() {
        // Code for enemy attacking
    }

    func talk() {
        // Enemies might not talk, so this can be left empty
    }

    func takeDamage(amount: Int) {
        healthPoints -= amount
    }

    func heal(amount: Int) {
        healthPoints += amount
    }
}

