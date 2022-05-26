//
//  PokemonRepository.swift
//  PokedexMVVM (iOS)
//
//  Created by maxsuel on 26/05/22.
//

import Foundation

class PokemonRepository:@ObservableObject{
    @Published var repository:[PokemonEspecie]
    init(){
        
    }
}
