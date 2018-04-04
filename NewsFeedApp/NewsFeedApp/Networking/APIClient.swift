//
//  APIClient.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 4.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import Alamofire

class APIClient {
    @discardableResult
    private static func performRequest<T: Decodable>(route: APIRouter,
                                                     decoder: JSONDecoder = JSONDecoder(),
                                                     completion: @escaping(Result<T>) -> Void) -> DataRequest {
        return Alamofire.request(route)
                        
    }
}
