//
//  CheckingAccountTests.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import XCTest
@testable import Banking_program

class CheckingAccountTests: XCTestCase {

    func testWithdraMoney() {
        let account = CheckingAccount(user: User(name: "Oscar"),
                                      balance: 100,
                                      withdrawLimit: 70)
        try! account.withdrawMoney(ammount: 20)
        
        XCTAssertEqual(account.balance, 80)
        
        XCTAssertThrows(expression: try account.withdrawMoney(ammount: 85),
                        error: BankError.Account.cannotWithdrawMoreThanLimit)
        
        try! account.withdrawMoney(ammount: 70)
        try! account.withdrawMoney(ammount: 20)
        
        XCTAssertEqual(account.balance, -10)
        
        XCTAssertThrows(expression: try account.withdrawMoney(ammount: 5),
                        error: BankError.Account.insufficientFunds)
    }

}
