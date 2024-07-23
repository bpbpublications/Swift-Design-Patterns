import Foundation

//Dictionaries
var person = ["name": "Nikhil", "age": 25]

let name = person["name"]

person["city"] = "New Delhi" // Adding a new key-value pair
person["age"] = 26          // Modifying a value by key
person.removeValue(forKey: "city") // Removing a key-value pair

for (key, value) in person {
    print("\(key): \(value)")
}
