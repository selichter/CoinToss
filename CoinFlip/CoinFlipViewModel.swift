//
//  CoinFlipViewModel.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/16/24.
//

import Foundation
import Observation

@Observable
class CoinFlipViewModel {
    let options = CoinSide.allCases
    var outcome: CoinSide?
    var degreesToFlip: Double = 0
    var isFlipping: Bool = false
    
    func getOption() -> String {
        return options.randomElement()?.name ?? "Something went wrong"
    }
    
    func clearBoard() {
        outcome = nil
    }
    
    func flipCoin() {
        isFlipping = true
        guard let decision = options.randomElement() else { return }
        degreesToFlip += 360
        setOutcome(decision: decision)
        isFlipping = false
    }
    
    func setOutcome(decision: CoinSide) {
        outcome = decision
    }
}
