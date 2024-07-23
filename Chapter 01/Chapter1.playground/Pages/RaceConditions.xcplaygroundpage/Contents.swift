import Foundation
// Create a serial queue
let serialQueue = DispatchQueue(label: "com.myapp.serialQueue ")

// Shared resource
var sharedData = [Int]()

serialQueue.sync {
    // Access sharedData safely
        sharedData.append(1)
    print("\(sharedData)")
}


// Access sharedData safely
serialQueue.sync {
        sharedData.append(2)
    print("\(sharedData)")

}
