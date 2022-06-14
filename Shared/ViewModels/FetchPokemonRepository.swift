//
//  FetchPokemonRepository.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 13/06/22.
//

import Foundation
import SwiftUI

class PokemonRepositoryController{    
    var listOfPokemonToFetch:[String]=[]
    init()async throws{
        listOfPokemonToFetch = try await fetchPokemonsByGen()
    }
    func fetchPokemon() async throws->Pokemon{
        let pokemon = try await fetchPokemonData(pokeURL: listOfPokemonToFetch[0])
        return pokemon
    }
}
