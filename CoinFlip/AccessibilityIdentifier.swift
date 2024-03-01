//
//  AccessibilityIdentifier.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/30/24.
//

import Foundation

protocol AccessibilityIdentifier {
    var rawValue: String { get }
    var identifier: String { get }
}

extension AccessibilityIdentifier {
    var identifier: String {
        rawValue
    }
}

enum CoinFlipIdentifiers: String, AccessibilityIdentifier {
    case flipCoin
    case resetDecision
    case flipOutcome
    case headsImage
    case tailsImage
    case helpText
}
