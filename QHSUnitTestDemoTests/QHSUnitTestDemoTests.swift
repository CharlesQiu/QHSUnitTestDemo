//
//  QHSUnitTestDemoTests.swift
//  QHSUnitTestDemoTests
//
//  Created by david on 2017/4/21.
//  Copyright © 2017年 Charles. All rights reserved.
//

import XCTest
@testable import QHSUnitTestDemo
import ObjectMapper

class QHSUnitTestDemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let JSON1: [String: Any] = ["longitude1": "2.22"]
        let model1: QHSTestModel = Mapper<QHSTestModel>().map(JSON: JSON1)!
        XCTAssertTrue(model1.longitude == "2.22", model1.longitude)
//        XCTAssertTrue(model1.longitude == "2.22")
//        XCTAssertTrue(model1.longitude != "0.0")
//        XCTAssertTrue(model1.longitude != "")
        let JSON2: [String: Any] = ["longitude0": "", "longitude1": "2.22"]
        let model2: QHSTestModel = Mapper<QHSTestModel>().map(JSON: JSON2)!
        XCTAssertTrue(model2.longitude == "2.22", model2.longitude)
//        XCTAssertTrue(model2.longitude == "0.0")
//        XCTAssertTrue(model2.longitude == "")
        let JSON3: [String: Any] = ["longitude0": "2.22"]
        let model3: QHSTestModel = Mapper<QHSTestModel>().map(JSON: JSON3)!
        XCTAssertTrue(model3.longitude == "2.22", model3.longitude)
//        XCTAssertTrue(model3.longitude == "0.0")
//        XCTAssertTrue(model3.longitude == "")
        
        let JSON4: [String: Any] = ["longitude0": "", "longitude1": ""]
        let model4: QHSTestModel = Mapper<QHSTestModel>().map(JSON: JSON4)!
        XCTAssertTrue(model4.longitude == "0.0", model4.longitude)

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
