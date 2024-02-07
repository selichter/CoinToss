//
//  DecisionView.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 2/7/24.
//

import SwiftUI

struct DecisionView: View {
    var body: some View {
        VStack {
            Text("Decision")
                .font(.title)
                .accessibilityIdentifier(CoinFlipIdentifiers.decisionNavTitle.identifier)
        }
        
    }
}

#Preview {
    DecisionView()
}
