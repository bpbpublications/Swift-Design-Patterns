import Foundation

func makeCoffee() async -> String {
    // Simulate making coffee
    await Task.sleep(1 * 1_000_000_000) // Wait for 1 second
    
    return "Here's your coffee!"
}

async {
    let coffee = await makeCoffee()
    print(coffee)
}
