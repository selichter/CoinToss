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
    @State var isFlipping = false
    @State var degreesToFlip: Double = 0
    
    var body: some View {
        VStack {
            CoinView(coinSide: viewModel.outcome ?? .heads)
                .rotation3DEffect(Angle(degrees: degreesToFlip),
                                          axis: (x: 0.0, y: 10.0, z: 0.0)
                )
                .animation(.easeInOut, value: 1.0)
                .onTapGesture {
                    withAnimation {
                        self.degreesToFlip += 360
                        self.isFlipping.toggle()
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
                        self.degreesToFlip += 360
                        self.isFlipping.toggle()
                        viewModel.flipCoin()
                    }
                    
                }.accessibilityIdentifier(CoinFlipIdentifiers.flipCoin.identifier)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
