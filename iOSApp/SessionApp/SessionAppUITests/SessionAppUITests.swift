//
//  SessionAppUITests.swift
//  SessionAppUITests
//
//  Created by Pavel Balint on 05/08/2016.
//  Copyright © 2016 Pavel Balint. All rights reserved.
//

import XCTest

class SessionAppUITests: XCTestCase {
  
  let welcomeTextField = "welcomeTextField"
  let welcomeLabel = "welcomeLabel"
  let welcomeButton = "welcomeButton"
  
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
      let name = "Pavel"
      let app = XCUIApplication()
      enterNameAndSubmit(app, name: name)
      let labelText = app.staticTexts[welcomeLabel].label
      XCTAssertTrue("Hello " + name + "!" == labelText, "Welcome text has unexpected value:" + labelText)
    }
  
  func enterNameAndSubmit(app: XCUIApplication, name: String){
    app.textFields[welcomeTextField].tap()
    app.textFields[welcomeTextField].typeText(name)
    app.buttons[welcomeButton].tap()
  }
}
