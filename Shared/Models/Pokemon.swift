//
//  Pokemon.swift
//  PokedexMVVM (iOS)
//
//  Created by maxsuel on 26/05/22.
//

import Foundation

struct PokemonEspecie{
    var id:String
    var name:String
    var url:String
    var types:[String]
    var evolutionChain:EvolutionChain
    
    init (id:String, name:String, url:String, types:[String], evolutionChain:EvolutionChain){
        self.name = name
        self.url = url
        self.types = types
        self.evolutionChain = evolutionChain
    }
    
}
