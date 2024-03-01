//
//  ContentView.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/13/24.
//

import SwiftUI
import Observation

struct ContentView: View {
    var viewModel: CoinFlipViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            
            if !viewModel.isFlipping {
                Text(viewModel.outcome?.name ?? "Flip the coin to decide")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .accessibilityIdentifier(CoinFlipIdentifiers.flipOutcome.identifier)
            }
            
            CoinView(coinSide: viewModel.outcome ?? .heads)
                .rotation3DEffect(Angle(degrees: viewModel.degreesToFlip),
                                  axis: (x: 0.0, y: 10.0, z: 0.0)
                )
                .gesture(
                    DragGesture()
                        .onChanged { _ in
                            withAnimation {
                                viewModel.flipCoin()
                            }
                            
                        }
                )
                .animation(.easeInOut, value: 1.0)
                .onTapGesture {
                    withAnimation {
                        viewModel.flipCoin()
                    }
                }
            
            Text("Swipe to flip")
                .font(.footnote)
                .padding(.top)
                .accessibilityIdentifier(CoinFlipIdentifiers.helpText.identifier)
            
        }
        .padding()
    }
}




#Preview("Initial") {
    ContentView(viewModel: CoinFlipViewModel())
}

#Preview("Heads State") {
    ContentView(viewModel: PreviewData.headsViewModel)
}

#Preview("Tails State") {
    ContentView(viewModel: PreviewData.tailsViewModel)
}
