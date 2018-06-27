//
//  Fixtures.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation
import Banking_program

final class Fixtures {
    
    static var bank: Bank {
        let bank = Bank()
        
        let oscar = User(name: "Oscar")
        let savings1 = SavingsAccount(user: oscar, balance: 10)
        let checking = CheckingAccount(user: oscar,
                                       balance: 500,
                                       withdrawLimit: 10)
        let savings2 = SavingsAccount(user: oscar, balance: 50)
        
        bank.accounts = [savings1, checking, savings2]
        
        return bank
    }
}
