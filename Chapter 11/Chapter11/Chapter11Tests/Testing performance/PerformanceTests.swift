//
//  PerformanceTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class PerformanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testPerformanceExample() {
        measure {
            // Code under test
            for _ in 1...1000 {
                // Perform an operation to be measured
            }
        }
    }


}
