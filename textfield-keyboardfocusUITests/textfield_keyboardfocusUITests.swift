//
//  textfield_keyboardfocusUITests.swift
//  textfield-keyboardfocusUITests
//
//  Created by Sean Sabbage on 13/08/2015.
//  Copyright © 2015 Bipsync. All rights reserved.
//

import XCTest

class textfield_keyboardfocusUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testChangeFocus() {
        
        let element = XCUIApplication().childrenMatchingType(.Window).elementBoundByIndex(0).childrenMatchingType(.Other).element
        let textField = element.childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("123")
        
        let textField2 = element.childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField2.typeText("456")
        
    }
    
    func testReturnFocus() {
        let element = XCUIApplication().childrenMatchingType(.Window).elementBoundByIndex(0).childrenMatchingType(.Other).element
        let textField = element.childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("123")
        
        let textField2 = element.childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField.tap()
        textField.typeText("456")
    }
    
}
