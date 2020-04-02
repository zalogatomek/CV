import XCTest
@testable import CVStatic

final class CVStaticTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CVStatic().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
