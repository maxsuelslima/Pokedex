//
//  PokemonRepositoyJSONModel.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 12/06/22.
//

import Foundation

struct PokemonJSONModel:Decodable{
    let name:String
    let types:[PokemonTypes]
    let sprites:Sprites
}
struct PokemonTypes:Decodable{
    let slot:Int
    let type:PokemonType
}
struct PokemonType:Decodable{
    let name:String
}
struct Sprites:Decodable{
    let front_default:String
}
