//
//  SavingsAccountTests.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import XCTest
@testable import Banking_program

class SavingsAccountTests: XCTestCase {

    func testApplyInterestRate() {
        let account = SavingsAccount(user: User(name: "Oscar"), balance: 100)
        account.apply(interestRate: 0.2)
        
        XCTAssertEqual(account.balance, 120, accuracy: 0.0000001)
    }

}
