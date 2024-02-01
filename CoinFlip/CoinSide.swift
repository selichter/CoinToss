//
//  CoinSide.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/31/24.
//

import Foundation

enum CoinSide: CaseIterable {
    case heads
    case tails
    
    var name: String {
        switch self {
        case .heads:
            return "Heads"
        case .tails:
            return "Tails"
        }
    }
}
