//
//  UserManagerTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class UserManagerTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFetchUser() {
        let userManager = MockUserManager()

        userManager.fetchUser(withId: 1) { user in
            XCTAssertEqual(user?.id, 1)
            XCTAssertEqual(user?.username, "mock_user")
            XCTAssertEqual(user?.email, "mock@example.com")
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
