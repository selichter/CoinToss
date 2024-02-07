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
    case headsImage
    case tailsImage
    case quickFlipTab
    case quickFlipNavTitle
    case decisionTab
    case decisionNavTitle
    
    var identifier: String {
        switch self {
        case .flipCoin:
            return "flipCoin"
        case .resetDecision:
            return "resetDecision"
        case .flipOutcome:
            return "flipOutcome"
        case .headsImage:
            return "headsImage"
        case .tailsImage:
            return "tailsImage"
        case .quickFlipTab:
            return "quickFlipTab"
        case .quickFlipNavTitle:
            return "quickFlipNavTitle"
        case .decisionTab:
            return "decisionTab"
        case .decisionNavTitle:
            return "decisionNavTitle"
        }
    }
}
