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
    
    var image: Image {
        switch self {
        case .heads:
            return Image("heads")
        case .tails:
            return Image("tails")
        }
    }
    
    var isHeads: Bool {
        return self == .heads
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
