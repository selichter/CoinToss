//
//  CoinFlipTests.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import XCTest

class CoinFlipTests: BaseTests {
    
    func testFlipCoin() {
        coinFlipScreen.flipCoinButton.tap()
        XCTAssert(coinFlipScreen.resetDecision.exists)
        
        XCTAssert(coinFlipScreen.flipOutcome.exists)
        let displayText = coinFlipScreen.flipOutcome.label
        XCTAssert(displayText == "Heads" || displayText == "Tails")
        if displayText == "Heads" {
            XCTAssert(coinFlipScreen.headsImage.exists)
        } else {
            XCTAssert(coinFlipScreen.tailsImage.exists)
        }
        coinFlipScreen.resetDecision.tap()
        XCTAssert(coinFlipScreen.flipCoinButton.exists)
        
        XCTAssertFalse(coinFlipScreen.flipOutcome.exists)
    }
}
