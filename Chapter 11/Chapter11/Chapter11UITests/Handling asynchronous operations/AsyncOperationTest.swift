//
//  AsyncOperationTest.swift
//  Chapter11UITests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class AsyncOperationTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAsyncOperation() {
        let app = XCUIApplication()
        app.launch()

        // Create an expectation
        let expectation = XCTestExpectation(description: "AsyncOperation")

        // Perform an asynchronous operation
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // Fulfill the expectation when the operation is complete
            expectation.fulfill()
        }

        // Wait for the expectation to be fulfilled
        wait(for: [expectation], timeout: 3)
    }

}
