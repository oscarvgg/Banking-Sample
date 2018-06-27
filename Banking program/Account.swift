//
//  Account.swift
//  Banking program
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation

public protocol Account {
    
    var owner: User { get set }
    var balance: Double { get set }
}

public extension Account {
    
    public mutating func addMoney(ammount: Double) {
        balance += ammount
    }
    
    public mutating func withdrawMoney(ammount: Double) throws {
        let finalBalance = balance - ammount
        
        if finalBalance < 0 {
            throw BankError.Account.insufficientFunds
        }
        
        balance = finalBalance
    }
}
