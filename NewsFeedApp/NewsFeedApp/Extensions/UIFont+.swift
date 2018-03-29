//
//  UIFont+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 29.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UIFont {
    /**
     Initializes an UIFont using a predefined enumeration and a given size. Also, the project has R.swift,
     which allows to use R.font. This is a class that simulate it when you cannot use  R.swift
     */
    private enum NewsFeedFonts: String {
        case paintingRegular = "Painting_With_Chocolate"
        case pentayBookRegular = "Pentay-Book-FFP"
        case pentayBookItalic = "Pentay-Book-Italic-FFP"
    }

    static func defaultFont(for size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }

    /// Painting_With_Chocolate
    static let paintingRegular = UIFont(name: NewsFeedFonts.paintingRegular.rawValue, size: 14.0) ?? defaultFont(for: 14.0)
    static let paintingMedium = UIFont(name: NewsFeedFonts.paintingRegular.rawValue, size: 16.0) ?? defaultFont(for: 16.0)
    static let paintingBig = UIFont(name: NewsFeedFonts.paintingRegular.rawValue, size: 25.0) ?? defaultFont(for: 25.0)

    ///Pentay-Book-FFP
    static let pentayBookRegular = UIFont(name: NewsFeedFonts.pentayBookRegular.rawValue, size: 14.0) ?? defaultFont(for: 14.0)
    static let pentayBookMedium = UIFont(name: NewsFeedFonts.pentayBookRegular.rawValue, size: 16.0) ?? defaultFont(for: 16.0)
    static let pentayBookBig = UIFont(name: NewsFeedFonts.pentayBookRegular.rawValue, size: 25.0) ?? defaultFont(for: 25.0)

    ///Pentay-Book-Italic-FFP
    static let pentayBookItalic = UIFont(name: NewsFeedFonts.pentayBookItalic.rawValue, size: 14.0) ?? defaultFont(for: 14.0)
    static let pentayBookItalicMedium = UIFont(name: NewsFeedFonts.pentayBookItalic.rawValue, size: 16.0) ?? defaultFont(for: 16.0)
    static let pentayBookItalicBig = UIFont(name: NewsFeedFonts.pentayBookItalic.rawValue, size: 25.0) ?? defaultFont(for: 25.0)
}
