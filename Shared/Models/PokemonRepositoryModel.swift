//
//  PokemonRepository.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 12/06/22.
//

import Foundation

class PokemonRepository:ObservableObject{
    @Published var repository:[Pokemon]=[]
    var pokeURLS:[String] = []
    
    init(){
        Task{
            pokeURLS = try await fetchPokemonsByGen()
            for i in 0...19{
                print(i)
                let pokemon = try await fetchPokemonData(pokeURL: pokeURLS[i])
                await MainActor.run{
                    repository.append(pokemon)
                }
            }
        }
    }
    
    func fetchNextPokemon(){
        
    }
    
    
}
