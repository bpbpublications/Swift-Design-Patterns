//
//  UserModelTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class UserModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserProperties() {
        let user = User(id: 1, username: "rohit_sharma", email: " rohit_sharma@example.com")
        XCTAssertEqual(user.id, 1)
        XCTAssertEqual(user.username, "rohit_sharma")
        XCTAssertEqual(user.email, "rohit_sharma@example.com")
    }
    
    func testFullName() {
        let user = User(id:2, username: "rohit_sharma", email: "rohit_sharma@example.com", firstName: "Rohit", lastName: "Sharma")
        
        XCTAssertEqual(user.fullName(), "Rohit Sharma")
    }



    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
