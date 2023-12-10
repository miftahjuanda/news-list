//
//  CommonsNetwork.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 06/12/23.
//

import Foundation

public enum APIError: Error {
    case invalidURL
    case requestFailed(String)
    case decodingFailed
}

public enum HttpMethod: String {
    case get = "GET"
}
