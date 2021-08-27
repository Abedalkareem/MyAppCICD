//
//  MyAppTests.swift
//  MyAppTests
//
//  Created by abedalkareem omreyh on 5/17/19.
//  Copyright © 2019 abedalkareem. All rights reserved.
//

import XCTest
@testable import MyApp

class MyAppTests: XCTestCase {

  var myMath: MyMath!

  override func setUp() {
    myMath = MyMath()
  }

  override func tearDown() {
    myMath = nil
  }

  func testSum5And10() {
    myMath.sum(x: 5, y: 10)
    assert(myMath.result! == 15, "5 plus 10 should be 15 but the result was \(myMath.result!)")
  }

  func testMinus1() {
    myMath.sum(x: 5, y: 10)
    myMath.minusOne()
    assert(myMath.result! == 14, "15 minus 1 should be 14 but the result was \(myMath.result!)")
  }

}
