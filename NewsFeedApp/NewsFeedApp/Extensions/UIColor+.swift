//
//  UIColor+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 28.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UIColor {
    // MARK: - Common
    class var mainDarBlue:          UIColor { return UIColor(hexString: "#66a3ff") }
    class var secondBlue:           UIColor { return UIColor(hexString: "#003380") }
    class var red:                  UIColor { return UIColor(hexString: "#EE1C2E") }
    class var backgroundWhite:      UIColor { return UIColor(hexString: "#F7F7F7") }
    class var backgroundLightGray:  UIColor { return UIColor(hexString: "#E5E8EA") }

    // MARK: - Text
    class var textMain:     UIColor { return UIColor(hexString: "#000000") }
    class var textSecond:   UIColor { return UIColor(hexString: "#696969") }
    class var textDisabled: UIColor { return UIColor(hexString: "#CCCCCC") }

    // MARK: - Tab
    class var tabMenu: UIColor { return UIColor(hexString: "#CCCCCC") }

    // MARK: - Init
    private convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32

        switch hex.count {
        // RGB (12-bit)  #rgb
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        // RGB (24-bit)  #rrggbb
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        // ARGB (32-bit) #aarrggbb
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 0x80, 0x80, 0x80)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
