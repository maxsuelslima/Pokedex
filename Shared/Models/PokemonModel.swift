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
    let imageURL:String
    init(name:String, types:[PokemonTypes], imageURL:String){
        self.types = types
        self.name = name
        self.imageURL = imageURL
    }
}
