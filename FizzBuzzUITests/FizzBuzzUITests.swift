//
//  FizzBuzzUITests.swift
//  FizzBuzzUITests
//
//

import XCTest

class FizzBuzzUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        
      
        continueAfterFailure = false
       
        XCUIApplication().launch()

     
    }
    
    override func tearDown() {
       
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementScore(){
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    
    }
    
    func testTapTwiceNumberButtonIncrementScore(){
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
//    func testTapFizzBuzzButtonIncrementsTo15() {
//        let app = XCUIApplication()
//        let numberButton = app.buttons["numberButton"]
//        let fizzbuzzButton = app.buttons["fizzBuzzButton"]
//        
//        playTo14()
//        
//        fizzbuzzButton.tap()
//        let newScore = numberButton.label
//        XCTAssertEqual(newScore, "15")
//    }
    
    
    
}
