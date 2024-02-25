//
//  CoinFlipViewModelTests.swift
//  CoinFlipTests
//
//  Created by Sarah Lichter on 1/31/24.
//

import XCTest
@testable import CoinFlip

final class CoinFlipViewModelTests: XCTestCase {

    func testInitialization() {
        let viewModel = CoinFlipViewModel()
        XCTAssertEqual(viewModel.options, [CoinSide.heads, CoinSide.tails])
        XCTAssertEqual(viewModel.degreesToFlip, 0)
        XCTAssertNil(viewModel.outcome)
        XCTAssertFalse(viewModel.isFlipping)
    }
    
    func testSetOutcomeSetsTheOutcome() {
        let viewModel = CoinFlipViewModel()
        viewModel.setOutcome(decision: .heads)
        
        XCTAssertEqual(viewModel.outcome, .heads)
    }
    
    func testFlipCoinDeterminesAnOutcome() {
        let viewModel = CoinFlipViewModel()
        viewModel.flipCoin()
        
        XCTAssertEqual(viewModel.degreesToFlip, 360)
        XCTAssertNotNil(viewModel.outcome)
    }
    
    func testClearBoardSetsOutcomeToNil() {
        let viewModel = CoinFlipViewModel()
        viewModel.outcome = .heads
        
        viewModel.clearBoard()
        XCTAssertNil(viewModel.outcome)
        XCTAssertEqual(viewModel.degreesToFlip, 0)
    }
}
