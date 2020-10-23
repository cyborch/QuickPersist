//
//  OperatorTests.swift
//  QuickPersistTests
//
//  Created by Anders Borch on 23/10/2020.
//

import XCTest
import RealmSwift
@testable import QuickPersist

class OperatorTests: XCTestCase {

    func testOperator() throws {
        XCTAssertNoThrow(try RealmOperator())
    }
    
}
