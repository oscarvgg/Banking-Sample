//
//  Bank.swift
//  Banking program
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation

public final class Bank {
    
    public var accounts: [Account] = []
    
    fileprivate var _interestRate: Double = 0
    
    public init() {}
    
    public var interestRate: Double {
        return _interestRate
    }
    
    public func setInterestRate(_ value: Double) throws {
        
        if value > 1 || value < 0 {
            throw BankError.interestRateShouldBeBetweenZeroAndOne
        }
        
        _interestRate = value
    }
    
    public func provideInterestToAllUsers() {
        accounts
            .compactMap({ $0 as? SavingsAccount })
            .forEach({ $0.apply(interestRate: _interestRate) })
    }
    
}
