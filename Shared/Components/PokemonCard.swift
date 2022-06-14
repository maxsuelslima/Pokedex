//
//  PokemonCard.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 14/06/22.
//

import Foundation
import SwiftUI

struct PokemonCard:View{
    var name:String
    var imageURL:String
    var types:[PokemonTypes]
    
    init(poke:Pokemon){
        self.name = poke.name
        self.types = poke.types
        self.imageURL = poke.imageURL
    }
    var body:some View {
        GeometryReader{ geometry in
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        AsyncImage(
                            url: URL(string: imageURL),
                            content: {image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 50, maxHeight: 50)
                                    .background(.white)
                                    .cornerRadius(10, antialiased: true)
                            },
                            placeholder: {
                                  ProgressView()
                              }
                        )
                        Text(name)
                    }
                    HStack(alignment: .center){
                        Spacer()
                        ForEach(types, id:\.slot){ type in
                            Text(type.type.name)
                        }
                        Spacer()
                    }
                }
            }
        }.frame(height: 100)
            .background(.green)
            .cornerRadius(10, antialiased: true)
    }
}
