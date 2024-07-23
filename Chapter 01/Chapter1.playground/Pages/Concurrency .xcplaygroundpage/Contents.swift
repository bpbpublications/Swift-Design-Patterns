import Foundation

let serialQueue = DispatchQueue(label: "com.example.serialqueue")

serialQueue.async {
    // Task 1
}

serialQueue.async {
    // Task 2 (waits for Task 1 to finish)
}


let concurrentQueue = DispatchQueue(label: "com.example.concurrentqueue", attributes: .concurrent)

concurrentQueue.async {
    // Task 1
}

concurrentQueue.async {
    // Task 2 (can run concurrently with Task 1)
}
