//
//  Constants.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 4.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import Foundation

struct Production {
    struct ProductionServer {
        static let baseURL = "https://newsapi.org/v1"
    }

    // This is for example
    // when we should send with header
    // part - email and password
    struct APIPamarameterKey {
        static let password = ""
        static let email = ""
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
