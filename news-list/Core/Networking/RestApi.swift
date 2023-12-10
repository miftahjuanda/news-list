//
//  RestApi.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 06/12/23.
//

import Foundation

public enum Endpoint {
    case getNews
    
    var baseUrl: String {
        switch self {
        default:
            return "https://60a4954bfbd48100179dc49d.mockapi.io"
        }
    }
    
    var path: String {
        switch self {
        case .getNews:
            return "/api/innocent/newsapp/articles"
        }
    }
    
    var httpMethod: HttpMethod {
        switch self {
        case .getNews:
            return .get
        }
    }
}
