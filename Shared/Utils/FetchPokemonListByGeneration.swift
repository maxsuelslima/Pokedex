//
//  FetchByGeneration.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 11/06/22.
//

import Foundation


    func fetchPokemonsByGen(gen:Int=1) async throws->[String]{
        var pokeURLS:[String] = []
        let data = try await downloadData(url: "https://pokeapi.co/api/v2/generation/\(gen)")
        guard let resp = try? JSONDecoder().decode(GenerationJSONModel.self, from: data) else {
            throw JSONDownloadErrors.urlError
        }
        for (index, _) in resp.pokemon_species.enumerated(){
            pokeURLS.append("https://pokeapi.co/api/v2/pokemon/\(index+1)")
        }
        return pokeURLS
    }

