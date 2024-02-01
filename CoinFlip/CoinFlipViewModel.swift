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
    
    func getOption() -> String {
        return options.randomElement()?.name ?? "Something went wrong"
    }
    
    func clearBoard() {
        outcome = nil
    }
    
    func flipCoin() {
        guard let decision = options.randomElement() else { return }
        setOutcome(decision: decision)
    }
    
    func setOutcome(decision: CoinSide) {
        outcome = decision
    }
}
