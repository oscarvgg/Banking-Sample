//
//  XCTestCase+ XCTAssertThrows.swift
//  Banking programTests
//
//  Created by Oscar Gonzalez on 27/06/2018.
//  Copyright © 2018 Sunhill. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    
    func XCTAssertThrows<ErrorType: Error, T>(expression: @autoclosure () throws -> T, error: ErrorType) where ErrorType: Equatable {
        do {
            _ = try expression()
            XCTFail("No error thrown")
        } catch let caughtError as ErrorType {
            XCTAssertEqual(caughtError, error)
        } catch {
            XCTFail("Wrong error")
        }
    }
}
