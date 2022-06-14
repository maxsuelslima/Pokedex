//
//  FetchPokemonData.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 12/06/22.
//

import Foundation

enum erros:Error{
    case urlError
}

func fetchPokemonData(pokeURL:String) async throws->Pokemon{
    print("url:\(pokeURL)")
    let data = try await downloadJSON(url: pokeURL)
    guard let pokemonData = try? JSONDecoder().decode(PokemonJSONModel.self, from: data) else {
        throw erros.urlError
    }
    let pokemon=Pokemon(name:pokemonData.name, types: pokemonData.types, imageURL: pokemonData.sprites.front_default)
    return pokemon
}
