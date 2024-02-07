//
//  CoinView.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 2/5/24.
//

import SwiftUI

struct CoinView: View {
    var coinSide: CoinSide
    
    var body: some View {
        ZStack {
            Circle()
                .fill(coinSide.secondaryColor)
                .frame(width: 100, height: 100)
            Circle()
                .fill(coinSide.mainColor)
                .frame(width: 90, height: 90)
        }
        .accessibilityIdentifier(coinSide.imageIdentifier)
    }
}

#Preview {
    Group {
        CoinView(coinSide: .heads)
        CoinView(coinSide: .tails)
    }
    
}
