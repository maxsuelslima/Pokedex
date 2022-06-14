//
//  ContentView.swift
//  Shared
//
//  Created by maxsuel on 26/05/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var teste:PokemonRepository
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView{
            VStack{
                LazyVGrid(columns: columns){
                        ForEach(teste.repository, id:\.name){ pokemon in
                            PokemonCard(poke: pokemon)
                        }
                    }

            }.background(.blue)

        }
    }
}

