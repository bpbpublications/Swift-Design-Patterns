//: [Previous](@previous)

import Foundation

protocol Command {
    func execute()
}

class LightOnCommand: Command {
    private let light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOn()
    }
}

class LightOffCommand: Command {
    private let light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOff()
    }
}

class RemoteControl {
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func pressButton() {
        command?.execute()
    }
}

class Light {
    func turnOn() {
        print("Light is ON")
    }
    
    func turnOff() {
        print("Light is OFF")
    }
}


let light = Light()

let lightOnCommand = LightOnCommand(light: light)
let lightOffCommand = LightOffCommand(light: light)

let remoteControl = RemoteControl()

remoteControl.setCommand(command: lightOnCommand)
remoteControl.pressButton() // Output: Light is ON

remoteControl.setCommand(command: lightOffCommand)
remoteControl.pressButton() // Output: Light is OFF


//: [Next](@next)
