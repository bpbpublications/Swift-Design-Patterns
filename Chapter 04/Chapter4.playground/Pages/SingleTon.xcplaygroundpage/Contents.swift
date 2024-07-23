//: [Previous](@previous)

import Foundation

class Singleton {
    static let shared = Singleton()
    private init() {
        // Initialization code here
    }
   func doSomething() {
       // Do something
       print("Do something")
   }
}


let singletonInstance = Singleton.shared
singletonInstance.doSomething()


class ThreadSafeSingleton {
    static let shared = ThreadSafeSingleton()
    private let concurrentQueue = DispatchQueue(label: "com.example.singleton", attributes: .concurrent)
    
    private init() {
        // Initialization code here
    }
    
    func doSomethingThreadSafe() {
        concurrentQueue.sync {
            // Access and modify Singleton properties safely
            print("Do doSomethingThreadSafe")
        }
    }
}

let threadSafeSingleton = ThreadSafeSingleton.shared
threadSafeSingleton.doSomethingThreadSafe()
