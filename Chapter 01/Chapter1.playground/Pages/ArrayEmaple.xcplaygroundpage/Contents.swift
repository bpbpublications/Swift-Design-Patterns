import Foundation
//Array

var players = ["Sachin", "Rahul", "Ganguly"]
let firstPlayer = players[0]
players.append("Robin")     // Adding an element to the end
players.insert("Yuvraj", at: 2) // Inserting an element at a specific index
players.remove(at: 1)         // Removing an element by index
players[0] = "Ramesh"           // Modifying an element

for player in players {
    print(player)
}
