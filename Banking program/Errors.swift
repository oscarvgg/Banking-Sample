//
//  Errors.swift
//  Banking program
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation

public enum BankError: Error {
    
    case interestRateShouldBeBetweenZeroAndOne
    
    public enum Account: Error {
        case insufficientFunds
        case cannotWithdrawMoreThanLimit
    }
    
}
