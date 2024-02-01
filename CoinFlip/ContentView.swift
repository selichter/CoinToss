//
//  ContentView.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/13/24.
//

import SwiftUI
import Observation

struct ContentView: View {
    var viewModel = CoinFlipViewModel()
    
    var body: some View {
        VStack {
            if let outcome = viewModel.outcome {
                Text(outcome.name)
                    .accessibilityIdentifier(CoinFlipIdentifiers.flipOutcome.identifier)
                Button("Reset Decision") {
                    viewModel.clearBoard()
                }.accessibilityIdentifier(CoinFlipIdentifiers.resetDecision.identifier)
            } else {
                Button("Flip Coin") {
                    viewModel.flipCoin()
                }.accessibilityIdentifier(CoinFlipIdentifiers.flipCoin.identifier)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
