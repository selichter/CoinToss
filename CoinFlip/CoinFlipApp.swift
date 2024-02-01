//
//  CoinFlipApp.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 1/13/24.
//

import SwiftUI

@main
struct CoinFlipApp: App {
    
    private var isProduction: Bool {
        return NSClassFromString("XCTestCase") == nil
    }
    
    var body: some Scene {
        WindowGroup {
            if isProduction {
                ContentView()
            } else {
                let _ = print("test launch")
            }
        }
    }
    
}
