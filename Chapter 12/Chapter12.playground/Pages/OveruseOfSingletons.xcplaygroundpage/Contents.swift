//: [Previous](@previous)

import Foundation

class SettingsManager {
    static let shared = SettingsManager()
    
    var theme: Theme = .light
    var notificationEnabled: Bool = true
    var soundEnabled: Bool = true

    private init() {}
}



//: [Next](@next)
