//
//  Chapter11Tests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest
@testable import Chapter11

final class Chapter11Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() {
        // Test logic here
        let result = add(2, 3)
        XCTAssertEqual(result, 5, "Addition failed")

    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

}

