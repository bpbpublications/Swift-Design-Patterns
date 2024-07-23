//
//  MyUITests.swift
//  Chapter11UITests
//
//  Created by Mihir Das on 19/07/24.
//

import XCTest

final class MyUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        continueAfterFailure = false

    }

    func testLogin() {
            // Launch the app
            let app = XCUIApplication()
            app.launch()

            // Enter credentials
            let usernameTextField = app.textFields["UsernameTextField"]
            usernameTextField.tap()
            usernameTextField.typeText("exampleuser")

            let passwordSecureTextField = app.secureTextFields["PasswordTextField"]
            passwordSecureTextField.tap()
            passwordSecureTextField.typeText("password123")

            // Tap the login button
            app.buttons["SubmitButton"].tap()

            // Assert that the user is logged in
            XCTAssertTrue(app.staticTexts["WelcomeLabel"].exists)
        }

}
