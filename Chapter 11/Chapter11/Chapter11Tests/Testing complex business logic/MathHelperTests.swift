//
//  MathHelperTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class MathHelperTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsPrime() {
        XCTAssertTrue(MathHelper.isPrime(2))
        XCTAssertTrue(MathHelper.isPrime(3))
        XCTAssertFalse(MathHelper.isPrime(4))
        XCTAssertTrue(MathHelper.isPrime(5))
        XCTAssertFalse(MathHelper.isPrime(6))
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
