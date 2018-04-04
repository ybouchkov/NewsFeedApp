//
//  Article.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 4.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

enum ArtilceKeys: String, CodingKey {
    case author
    case title
    case description
    case url
    case urlToImage
    case publishedAt
}

struct Article: Codable {
    var author: String
    var title: String
    var description: String
    var url: String
    var imageToUrl: String
    var publishedAt: Date
}
