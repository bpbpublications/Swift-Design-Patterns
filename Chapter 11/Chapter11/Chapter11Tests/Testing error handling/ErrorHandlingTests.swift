//
//  ErrorHandlingTests.swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class ErrorHandlingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDivisionByZero() {
        XCTAssertThrowsError(try divide(10, by: 0)) { error in
            XCTAssertEqual(error as? CalculatorError, .divisionByZero)
        }
    }


    enum CalculatorError: Error, Equatable {
        case divisionByZero
    }

    func divide(_ numerator: Double, by denominator: Double) throws -> Double {
        if denominator == 0 {
            throw CalculatorError.divisionByZero
        }
        return numerator / denominator
    }

}
