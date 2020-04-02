import XCTest

import CVStaticTests

var tests = [XCTestCaseEntry]()
tests += CVStaticTests.allTests()
XCTMain(tests)
