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
    let data = try await downloadData(url: pokeURL)
    guard let pokemonData = try? JSONDecoder().decode(PokemonJSONModel.self, from: data) else {
        throw erros.urlError
    }
    let imageData = try await downloadData(url: pokemonData.sprites.front_default)
    let pokemon=Pokemon(name:pokemonData.name, types: pokemonData.types, image:imageData)
    return pokemon
}
