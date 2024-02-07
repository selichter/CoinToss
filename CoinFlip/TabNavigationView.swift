//
//  TabNavigationView.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 2/7/24.
//

import SwiftUI

struct TabNavigationView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "arrow.clockwise")
                    Text("Quick Flip")
                        .accessibilityIdentifier(CoinFlipIdentifiers.quickFlipTab.identifier)
                }
            DecisionView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Decision")
                        .accessibilityIdentifier(CoinFlipIdentifiers.decisionTab.identifier)
                }
        }
        
    }
}

#Preview {
    TabNavigationView()
}
