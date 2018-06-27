//
//  AccountTests.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import XCTest
@testable import Banking_program

class AccountTests: XCTestCase {

    func testAddMoney() {
        struct MyAccount: Account {
            var owner: User
            var balance: Double
        }
        
        var account = MyAccount(owner: User(name: "Oscar"), balance: 100)
        account.addMoney(ammount: 20)
        
        XCTAssertEqual(account.balance, 120)
    }
    
    func testWithdrawMoney() {
        struct MyAccount: Account {
            var owner: User
            var balance: Double
        }
        
        var account = MyAccount(owner: User(name: "Oscar"), balance: 100)
        try! account.withdrawMoney(ammount: 50)
        
        XCTAssertEqual(account.balance, 50)
        XCTAssertThrows(expression: try account.withdrawMoney(ammount: 200),
                        error: BankError.Account.insufficientFunds)
    }

}
