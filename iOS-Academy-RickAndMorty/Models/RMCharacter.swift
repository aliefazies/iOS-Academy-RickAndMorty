//
//  RMCharacter.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 17/11/23.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: String
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}



