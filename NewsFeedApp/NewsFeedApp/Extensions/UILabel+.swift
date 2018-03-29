//
//  UILabel+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 29.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UILabel {
    func config(_ text: String, font: UIFont, color: UIColor? = .black) {
        self.text = text
        self.font = font
        self.textColor = color
    }
}
