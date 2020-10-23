//
//  QuickPersistTests.swift
//  QuickPersistTests
//
//  Created by Anders Borch on 23/10/2020.
//

import XCTest
import RealmSwift
@testable import QuickPersist

struct Person {
    var name: String
    var age: Int
    let id: String
}

extension Person: Persistable {
    static var typeName: String {
        return "Person"
    }
    
    var primaryKey: String {
        return id
    }
}

class QuickPersistTests: XCTestCase {

    func testWriteTransaction() throws {
        guard let realm = try? Realm() else {
            XCTFail("Failed initializing realm")
            return
        }
        let op = RealmOperator(realm: realm)
        
        let id = UUID().uuidString
        let person = Person(name: "John Doe", age: 20, id: id)

        XCTAssertNoThrow(try op.write { (writeTransaction) in
            XCTAssertNoThrow(try writeTransaction.add(person, update: .all))
        })
        
        let result = op.value(ofType: Person.self, withPrimaryKey: id)
        XCTAssertEqual(person.name, result?.name)
        XCTAssertEqual(person.age, result?.age)
        XCTAssertEqual(person.id, result?.id)
    }

}
