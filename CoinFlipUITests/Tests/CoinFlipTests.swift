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
    
    func testQuickFlipTab() {
        coinFlipScreen.quickFlipTab.tap()
        
        XCTAssert(coinFlipScreen.flipCoinButton.exists)
        XCTAssert(coinFlipScreen.flipCoinButton.isHittable)
        XCTAssertEqual(coinFlipScreen.quickFlipNavTitle.label, "Quick Flip")
    }
    
    func testDecisionTab() {
        coinFlipScreen.decisionTab.tap()
        XCTAssertEqual(coinFlipScreen.decisionNavTitle.label, "Decision")
    }
}
