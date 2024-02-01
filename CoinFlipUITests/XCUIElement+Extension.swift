//
//  XCUIElement+Extension.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import XCTest

extension XCUIElement {
    
    func button(_ button: ElementId) -> XCUIElement {
        return self.buttons[button.identifier].firstMatch
    }
    
    func staticText(id: ElementId) -> XCUIElement {
        return self.staticTexts[id.identifier].firstMatch
    }
    
}
