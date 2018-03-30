//
//  UIButton+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 29.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UIButton {
    func setup(title: String? = nil, font: UIFont? = nil, color: UIColor? = .white, image: UIImage? = nil) {
        self.titleLabel?.text = title
        self.tintColor = color
        self.titleLabel?.font = font
        self.setImage(image, for: .normal)
    }
}
