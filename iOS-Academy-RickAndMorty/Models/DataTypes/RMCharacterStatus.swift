//
//  RMCharacterStatus.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 18/11/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
