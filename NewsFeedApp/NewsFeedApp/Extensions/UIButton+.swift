//
//  UIButton+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 29.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UIButton {
    func setup(title: String, font: UIFont, color: UIColor? = .white) {
        self.titleLabel?.text = title
        self.tintColor = color
        self.titleLabel?.font = font
    }
}
