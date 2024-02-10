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
            Text("Quick Flip")
                .font(.title)
                .accessibilityIdentifier(CoinFlipIdentifiers.quickFlipNavTitle.identifier)
            Spacer()
            CoinView(coinSide: viewModel.outcome ?? .heads)
                .rotation3DEffect(Angle(degrees: viewModel.degreesToFlip),
                                  axis: (x: 0.0, y: 10.0, z: 0.0)
                )
                .animation(.easeInOut, value: 1.0)
                .onTapGesture {
                    withAnimation {
                        viewModel.flipCoin()
                    }
                }
            
            if let outcome = viewModel.outcome {
                Text(outcome.name)
                    .accessibilityIdentifier(CoinFlipIdentifiers.flipOutcome.identifier)
                Button("Reset Decision") {
                    viewModel.clearBoard()
                }.accessibilityIdentifier(CoinFlipIdentifiers.resetDecision.identifier)
            } else {
                Button("Flip Coin") {
                    withAnimation {
                        viewModel.flipCoin()
                    }
                    
                }.accessibilityIdentifier(CoinFlipIdentifiers.flipCoin.identifier)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
