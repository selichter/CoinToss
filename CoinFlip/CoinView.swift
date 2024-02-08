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
        coinSide.image
            .resizable()
            .frame(width: 200, height: 200)
            .accessibilityIdentifier(coinSide.imageIdentifier)
    }
}

#Preview {
    Group {
        CoinView(coinSide: .heads)
        CoinView(coinSide: .tails)
    }
    
}
