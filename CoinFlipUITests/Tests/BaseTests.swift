//
//  BaseTests.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import XCTest

class BaseTests: XCTestCase {
    let app = XCUIApplication()
    
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        return false
    }
    
    let baseScreen = BaseScreen()
    let coinFlipScreen = CoinFlipScreen()
    let tabNavigation = TabNavigation()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAutomatedAccessibility() {
        do {
            try app.performAccessibilityAudit()
        } catch {
            XCTFail("Accessibility Audit Failed")
        }
    }
}
