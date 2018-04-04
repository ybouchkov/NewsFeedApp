//
//  APIRouter.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 4.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit
import Alamofire

enum APIRouter: URLRequestConvertible {
    // MARK: - Add: Requests point
    case articles

    // MARK: - HTTP METHOD
    private var method: HTTPMethod {
        switch self {
        case .articles:
            return .get
        }
    }

    // API info: https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=0cf790498275413a9247f8b94b3843fd
    // MARK: - Path
    private var path: String {
        switch self {
        case .articles:
            return "/articles?source=the-next-web&sortBy=latest&apiKey=0cf790498275413a9247f8b94b3843fd" // testing purpose -
        }
    }

    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .articles:
            return [:] // empty paramters
        }
    }

    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try Production.ProductionServer.baseURL.asURL()
        // Create the urlRequest
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        // HTTP Method
        urlRequest.httpMethod = method.rawValue

        // Common headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)

        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }

}
