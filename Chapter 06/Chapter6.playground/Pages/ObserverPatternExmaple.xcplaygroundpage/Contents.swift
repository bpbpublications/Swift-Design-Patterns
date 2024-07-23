//: [Previous](@previous)

import Foundation

protocol WeatherObserver: AnyObject {
    func update(temperature: Double)
}

class PhoneDisplay: WeatherObserver {
    private let name: String

    init(name: String) {
        self.name = name
    }

    func update(temperature: Double) {
        print("\(name) Display: Updated temperature to \(temperature) degrees Celsius.")
    }
}

// Step 3: Define the Subject

class WeatherStation {
    private var temperature: Double = 0.0
    private var observers: [WeatherObserver] = []

    func addObserver(observer: WeatherObserver) {
        observers.append(observer)
    }

    func removeObserver(observer: WeatherObserver) {
        if let index = observers.firstIndex(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }

    func setTemperature(temperature: Double) {
        self.temperature = temperature
        notifyObservers()
    }

    private func notifyObservers() {
        for observer in observers {
            observer.update(temperature: temperature)
        }
    }
}

// Step 4: Using the Observer Pattern

let weatherStation = WeatherStation()

let phoneDisplay1 = PhoneDisplay(name: "Phone 1")
let phoneDisplay2 = PhoneDisplay(name: "Phone 2")

weatherStation.addObserver(observer: phoneDisplay1)
weatherStation.addObserver(observer: phoneDisplay2)

weatherStation.setTemperature(temperature: 25.0)

//: [Next](@next)
