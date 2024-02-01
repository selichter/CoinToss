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
        XCTAssertNil(viewModel.outcome)
    }
    
    func testSetOutcomeSetsTheOutcome() {
        let viewModel = CoinFlipViewModel()
        viewModel.setOutcome(decision: .heads)
        
        XCTAssertEqual(viewModel.outcome, .heads)
    }
    
    func testFlipCoinDeterminesAnOutcome() {
        let viewModel = CoinFlipViewModel()
        viewModel.flipCoin()
        
        XCTAssertNotNil(viewModel.outcome)
    }
    
    func testClearBoardSetsOutcomeToNil() {
        let viewModel = CoinFlipViewModel()
        viewModel.outcome = .heads
        
        viewModel.clearBoard()
        XCTAssertNil(viewModel.outcome)
    }
}
