//
//  File.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 11/06/22.
//

import Foundation

struct GenerationJSONModel: Decodable{
    var id:Int
    var pokemon_species:[PokemonSpecie]
}
