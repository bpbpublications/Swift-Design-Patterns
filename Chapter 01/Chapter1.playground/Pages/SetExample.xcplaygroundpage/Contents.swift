import Foundation

/**
 Sets
 **/

var colors: Set<String> = ["red", "green", "blue"]
colors.insert("yellow")       // Adding an element
colors.remove("green")        // Removing an element

let otherColors: Set<String> = ["blue", "orange"]
let commonColors = colors.intersection(otherColors)  // Intersection
let allColors = colors.union(otherColors)            // Union
let uniqueColors = colors.symmetricDifference(otherColors)  // Symmetric difference

if colors.contains("red") {
    print("Red is in the set")
}
