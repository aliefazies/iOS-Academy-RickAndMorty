//
//  RMEndpoint.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 17/11/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    
    /// Endpoint to get character info
    case character // "Character as a string"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
