//
//  Pokemon.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 12/06/22.
//

import Foundation

class Pokemon {
    let name:String
    let types:[PokemonTypes]
    let image:Data
    init(name:String, types:[PokemonTypes], image:Data){
        self.types = types
        self.name = name
        self.image = image
    }
}
