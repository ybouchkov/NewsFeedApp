//
//  UITextField+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 29.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UITextField {
    func setupTxtField(text: String? = nil,
                       placeholder: String? = nil,
                       font: UIFont,
                       textColor: UIColor? = nil,
                       placeholderColor: UIColor? = nil) {
        self.text = text
        self.font = font
        self.placeholder = placeholder
        self.textColor = textColor
//        self.attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder ?? "" : "", attributes: [NSAttributedStringKey.foregroundColor : placeholderColor ?? UIColor.white])
    }
}
