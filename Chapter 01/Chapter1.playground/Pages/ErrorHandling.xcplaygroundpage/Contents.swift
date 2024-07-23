import Foundation

//Error handling

enum myError: Error {
    
}

enum SomeError: Error {
    
}

enum AnotherError: Error {
    
}

do {
    let result = try doSomethingRisky()
} catch SomeError {
    // Handle SomeError
} catch AnotherError {
    // Handle AnotherError
} catch {
    // Catch any other errors
}

func doSomethingTricky() throws {
    // Your code that might throw an error
    throw myError
}
