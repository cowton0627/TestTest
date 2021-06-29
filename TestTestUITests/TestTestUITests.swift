//
//  TestTestUITests.swift
//  TestTestUITests
//
//  Created by 鄭淳澧 on 2021/6/26.
//

import XCTest
@testable import TestTest

class TestTestUITests: XCTestCase {

    var vc: UIViewController!
    
    override func setUpWithError() throws {
        continueAfterFailure = false

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        vc = storyboard.instantiateInitialViewController() as? UIViewController
        _ = vc.view
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
//    func testPushBtn() {
//        vc?.btnRun(self)
//        XCTAssert(vc?.lblText.text == "20")
//    }
    
    
//    func testLabelText() {
//        let text = "Hello World!"
//
//    }
    
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    
}
