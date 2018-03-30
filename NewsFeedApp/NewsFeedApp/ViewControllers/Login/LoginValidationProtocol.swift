//
//  LoginValidationProtocol.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 30.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import Foundation
/**
 ValidationFieldsProtocol for validation the login scene text fields - user and password
 This should be extended for example if we have a register screen and addin more text fields
 */
protocol ValidationFieldsProtocol {
    func isUsernameValid(username: String) -> Bool
    func isPasswordValid(password: String) -> Bool
}

extension ValidationFieldsProtocol {
    func isUsernameValid(username: String) -> Bool {
        let regex = "\\A\\w{7,18}\\z"
        let userValidation = NSPredicate(format: "SELF MATCHES %@", regex)
        return userValidation.evaluate(with: username)
    }

    /// This is a simple regex for validation the password
    /// It should be more complex, but for the example is okay
    func isPasswordValid(password: String) -> Bool {
        let regex = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
        let passwordValidation = NSPredicate(format: "SELF MATCHES %@", regex)
        return passwordValidation.evaluate(with: password)
    }
}

enum ErrorMessage: String {
    case passwordError = "Short or easy password"
    case userError = "Short or incorrect user"
}
