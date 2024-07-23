import Foundation

//Conditional statements

let temperature = 40
if temperature > 30 {
    print("It's a hot day!")
} else if temperature > 20 {
    print("It's a nice day.")
} else {
    print("It's cold today.")
}

//The `for-in` loop

let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
}
//The `while` loop
var count = 0
while count < 5 {
    print(count)
    count += 1
}

//The `repeat-while` loop

var tries = 0
repeat {
    print("Try again")
    tries += 1
} while tries < 3

