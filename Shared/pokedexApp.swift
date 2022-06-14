//
//  pokedexApp.swift
//  Shared
//
//  Created by maxsuel on 26/05/22.
//

import SwiftUI

@main
struct pokedexApp: App {
    var pokemonRepository:PokemonRepository=PokemonRepository()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(pokemonRepository)
        }
    }
}
