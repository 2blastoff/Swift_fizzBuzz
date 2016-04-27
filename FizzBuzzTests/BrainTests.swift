//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by c on 18/04/2016.
//  Copyright © 2016 chris. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testIsDivisibleByThree(){
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree(){
        let result = brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive(){
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive(){
        let result = brain.isDivisibleByFive(2)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByThreeAndFive(){
        let result = brain.isDivisibleByThreeAndFive(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThreeAndFive(){
        let result = brain.isDivisibleByThreeAndFive(6)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayNumber() {
        let result = brain.check(1)
        XCTAssertEqual(result, Move.Number)
    }
    
    
    
}
