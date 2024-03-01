//
//  CoinFlipTests.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import XCTest

class CoinFlipTests: BaseTests {
    
    func testFlipCoin() {
        XCTAssertEqual(coinFlipScreen.flipOutcome.label, "Flip the coin to decide")
        XCTAssertEqual(coinFlipScreen.helpText.label, "Swipe to flip")
        coinFlipScreen.headsImage.tap()
        
        let displayText = coinFlipScreen.flipOutcome.label
        XCTAssert(displayText == "Heads" || displayText == "Tails")
        if displayText == "Heads" {
            XCTAssert(coinFlipScreen.headsImage.exists)
        } else {
            XCTAssert(coinFlipScreen.tailsImage.exists)
        }
    }

}
