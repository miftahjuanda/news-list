//
//  NetworkManager.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import Foundation
import Combine

protocol NetworkService {
    func request<T: Decodable>(_ endpoint: Endpoint, headers: [String: String]?, parameters: Encodable?) -> AnyPublisher<T, APIError>
}

public class NetworkManager: NetworkService {
    
    func request<T: Decodable>(_ endpoint: Endpoint, headers: [String: String]? = nil, parameters: Encodable? = nil) -> AnyPublisher<T, APIError> {
        
        guard let url = URL(string: endpoint.baseUrl + endpoint.path) else {
            return Fail(error: APIError.invalidURL).eraseToAnyPublisher()
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.httpMethod.rawValue
        
        if let parameters = parameters {
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            do {
                let jsonData = try JSONEncoder().encode(parameters)
                urlRequest.httpBody = jsonData
            } catch {
                return Fail(error: APIError.requestFailed("Encoding parameters failed.")).eraseToAnyPublisher()
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse,
                      (200..<300).contains(httpResponse.statusCode) else {
                    throw APIError.requestFailed("Invalid HTTP status code:")
                }
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error -> APIError in
                if error is DecodingError {
                    return APIError.decodingFailed
                } else if let apiError = error as? APIError {
                    return apiError
                } else {
                    return APIError.requestFailed("An unknown error occurred.")
                }
            }
            .eraseToAnyPublisher()
    }
}
