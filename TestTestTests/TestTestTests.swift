//
//  TestTestTests.swift
//  TestTestTests
//
//  Created by 鄭淳澧 on 2021/6/26.
//

import XCTest
@testable import TestTest

//此處為Unit Test
class TestTestTests: XCTestCase {

    func testAdd() {
        let obj = Sample(55, 45)
        let val = obj.add()
        
        XCTAssert(val == 100, "相加應該要是 100")
        XCTAssertNil(nil, "這裡必須是nil")
        XCTAssertNotNil(val, "這裡不會是nil")
        XCTAssertEqual(val, 100)
        XCTAssertTrue(val > 99 && val < 101)
        XCTAssertFalse(val != 100)
    }
    
    var vc: ViewController!

    override func setUpWithError() throws {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        vc = sb.instantiateInitialViewController() as? ViewController
        _ = vc.view
        
    }
    
    func testPlusWithVal() {
        let a = 3
        let b = 2
        let result = vc?.plus(a, b)
        
        XCTAssert(result == 5, "Result is wrong.")
    }
    
    func testPlusWithoutVal() {
        let a = 3
        let result = vc?.plus(a, nil)
        
        XCTAssertNil(result, "Result is not nil.")
    }
    
    
    func testPushBtn() {
        vc?.btnRun(self)
        XCTAssert(vc?.lblText.text == "20", "按下按鈕應為20")
    }

    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    
    
    
    
    
    
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            
            for i: Int in 1...5000000 {
                let obj = Sample(i, 8)
                _ = obj.add()
            }
        }
    }

    
}
