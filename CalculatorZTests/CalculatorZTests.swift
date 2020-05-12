//
//  CalculatorZTests.swift
//  CalculatorZTests
//
//  Created by Laren Sakota on 4/22/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import XCTest
@testable import CalculatorZ

class CalculatorZTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testCalculate() {
        XCTAssert(CalculationZ.add(numbers: 25.0, withNumbers: 15.0) == String(40))
        XCTAssert(CalculationZ.subtract(numbers: 15.7891, withNumbers: 7.3567) == String(8.4324))
//        let returnMultiplyValue = CalculationZ.multiply(numbers: 15.7544, withNumbers: 1.2345)
//        let expectedMultiplyValue = 19.4488068
//        XCTAssertEqual(returnMultiplyValue, expectedMultiplyValue, accuracy: 0.000000000001, "Nice")
//        XCTAssert(CalculationZ.divide(numbers: 16.2, withNumbers: 2.5) == String(6.48))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
