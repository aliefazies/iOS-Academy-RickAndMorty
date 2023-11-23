//
//  RMRequest.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 17/11/23.
//

import Foundation

/// Object that represent a single API Call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API. If any
    private let pathComponents: Set<String>
    
    /// Query arguments for API. If any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
    //MARK: - Public
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target Enpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Colelction of Query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
