//
//  CheckingAccount.swift
//  Banking program
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation

public final class CheckingAccount: Account {
    
    public var owner: User
    
    public var balance: Double
    
    public var withdrawLimit: Double
    
    public init(user: User, balance: Double, withdrawLimit: Double) {
        self.owner = user
        self.balance = balance
        self.withdrawLimit = withdrawLimit
    }
    
    public func withdrawMoney(ammount: Double) throws {
        
        if balance < 0 {
            throw BankError.Account.insufficientFunds
        }
        
        if ammount > withdrawLimit {
            throw BankError.Account.cannotWithdrawMoreThanLimit
        }
        
        balance -= ammount
    }
}
