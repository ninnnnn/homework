//
//  InvalidError.swift
//  LoginSignup
//
//  Created by Ninn on 2019/11/20.
//  Copyright © 2019 Ninn. All rights reserved.
//

import Foundation

enum InvalidError: String, Error {
    case emptyAccount = "Account should not be empty."
    case emptyCheckPassword = "Check Password should not be empty."
    case emptyPassword = "Password should not be empty."
    case signupFail = "Signup fail"
    case loginFail = "Login fail"
}

public func checkUserInfo(acc: String, psw: String, chkpsd: String, checkEnable: Bool) throws {
    guard !acc.isEmpty else {
        throw InvalidError.emptyAccount
    }
    guard !psw.isEmpty else {
        throw InvalidError.emptyPassword
    }
    if !checkEnable {
        guard acc.isEqual("appworks_school@gmail.com") && psw.isEqual("1234") else {
            throw InvalidError.loginFail
        }
    } else {
        guard !chkpsd.isEmpty else {
        throw InvalidError.emptyCheckPassword
        }
        guard !acc.isEqual("appworks_school@gmail.com") && psw.isEqual(chkpsd) else {
            throw InvalidError.signupFail
        }
    }
}
