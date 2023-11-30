//
//  RMCharacterDetailViewViewModel.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 30/11/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) { 
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
