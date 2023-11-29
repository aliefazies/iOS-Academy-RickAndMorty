//
//  RMCharacterGender.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 18/11/23.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // ('Female', 'Male', 'Genderless' or 'unknown')
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
