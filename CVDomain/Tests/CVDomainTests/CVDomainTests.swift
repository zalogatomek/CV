import XCTest
@testable import CVDomain

final class CVDomainTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CVDomain().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
