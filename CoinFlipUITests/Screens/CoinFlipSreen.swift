//
//  CoinFlipSreen.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/30/24.
//

import XCTest

class CoinFlipScreen: BaseScreen {
    
    var flipCoinButton: XCUIElement {
        return app.button(.flipCoin)
    }
    
    var resetDecision: XCUIElement {
        return app.button(.resetDecision)
    }
    
    var flipOutcome: XCUIElement {
        return app.staticText(id: .flipOutcome)
    }
    
    var headsImage: XCUIElement {
        return app.image(id: .headsImage)
    }
    
    var tailsImage: XCUIElement {
        return app.image(id: .tailsImage)
    }
    
    var quickFlipNavTitle: XCUIElement {
        return app.staticText(id: .quickFlipNavTitle)
    }
    
    var decisionNavTitle: XCUIElement {
        return app.staticText(id: .decisionNavTitle)
    }
        
}
