//
//  TabNavigation.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 2/9/24.
//

import XCTest

class TabNavigation: BaseScreen {

    var quickFlipTab: XCUIElement {
        return app.tabBarItem(id: .quickFlipTab)
    }
    
    var decisionTab: XCUIElement {
        return app.tabBarItem(id: .decisionTab)
    }
    
}
