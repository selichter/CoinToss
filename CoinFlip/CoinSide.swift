//
//  CoinSide.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/31/24.
//

import Foundation
import SwiftUI

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
    
    var isHeads: Bool {
        return self == .heads
    }
    
    var mainColor: Color {
        switch self {
        case .heads:
            return .blue
        case .tails:
            return .orange
        }
    }
    
    var secondaryColor: Color {
        switch self {
        case .heads:
            return .gray
        case .tails:
            return .yellow
        }
    }
    
    var imageIdentifier: String {
        switch self {
        case .heads:
            return CoinFlipIdentifiers.headsImage.identifier
        case .tails:
            return CoinFlipIdentifiers.tailsImage.identifier
        }
    }
}
