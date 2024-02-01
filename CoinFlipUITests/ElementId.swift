//
//  ElementId.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import Foundation

enum ElementId {
    case flipCoin
    case resetDecision
    case flipOutcome
    
    var identifier: String {
        switch self {
        case .flipCoin:
            return "flipCoin"
        case .resetDecision:
            return "resetDecision"
        case .flipOutcome:
            return "flipOutcome"
        }
    }
}
