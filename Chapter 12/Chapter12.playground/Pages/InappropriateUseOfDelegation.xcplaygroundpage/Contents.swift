//: [Previous](@previous)

import Foundation

protocol TaskDelegate: AnyObject {
    func taskDidComplete()
}

class TaskManager {
    weak var delegate: TaskDelegate?

    func performTask() {
        // Perform task logic...
        delegate?.taskDidComplete()
    }
}






//: [Next](@next)
