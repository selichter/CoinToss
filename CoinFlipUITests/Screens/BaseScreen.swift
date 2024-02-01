//
//  BaseScreen.swift
//  CoinFlipUITests
//
//  Created by Sarah Lichter on 1/29/24.
//

import XCTest
@testable import CoinFlip

class BaseScreen {
    var app = XCUIApplication()
        
    func enterTextField(_ inputElement: XCUIElement, _ text: String) {
        inputElement.tap()
        inputElement.typeText(text)
    }
}
