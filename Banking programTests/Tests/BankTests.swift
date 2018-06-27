//
//  BankTests.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import XCTest
@testable import Banking_program

class BankTests: XCTestCase {

    func testSettingInterestRates() {
        let bank = Fixtures.bank
        
        XCTAssertThrows(expression: try bank.setInterestRate(10),
                        error: BankError.interestRateShouldBeBetweenZeroAndOne)
    }
    
    func testApplyInterestRates() {
        let bank = Fixtures.bank
        try! bank.setInterestRate(0.1)
        bank.provideInterestToAllUsers()
        
        XCTAssertEqual(bank.accounts[0].balance, 11, accuracy: 0.0000001)
        XCTAssertEqual(bank.accounts[1].balance, 500)
        XCTAssertEqual(bank.accounts[2].balance, 55, accuracy: 0.0000001)
    }

}
