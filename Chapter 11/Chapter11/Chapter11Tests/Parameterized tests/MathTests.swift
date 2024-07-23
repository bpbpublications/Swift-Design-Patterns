//
//  MathTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class MathTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() {
        let testData: [(Int, Int, Int)] = [(1, 2, 3), (5, 5, 10), (10, -3, 7)]
        
        for (a, b, expected) in testData {
            XCTAssertEqual(add(a, b), expected)
        }
    }
    
    private func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

}
