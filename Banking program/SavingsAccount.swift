//
//  SavingsAccount.swift
//  Banking program
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation

public final class SavingsAccount: Account {
    
    public var owner: User
    
    public var balance: Double
    
    public init(user: User, balance: Double) {
        self.owner = user
        self.balance = balance
    }
    
    public func apply(interestRate: Double) {
        balance *= 1 + interestRate
    }
}
