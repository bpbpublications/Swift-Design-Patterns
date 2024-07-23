//
//  FactorialTest.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class FactorialTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFactorial() {
        // Arrange
        let n = 5
        let expected = 120
        
        // Act
        let result = calculateFactorial(n)
        
        // Assert
        XCTAssertEqual(result, expected, "Factorial calculation failed")
    }

    func calculateFactorial(_ n: Int) -> Int {
        if n == 0 {
            return 1
        } else {
            return n * calculateFactorial(n - 1)
        }
    }


}
