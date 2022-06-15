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
    var types:[PokemonTypes]
    var image:UIImage
    
    init(poke:Pokemon){
        self.name = poke.name.capitalized
        self.types = poke.types
        self.image = UIImage(data: poke.image) ?? UIImage(ciImage: .blue)
    }
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body:some View {
        GeometryReader{ geometry in
            HStack{
                Image(uiImage: image)
                    .resizable()
                    .background(.white)
                    .cornerRadius(10, antialiased: true)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                VStack(alignment: .center){
                    Text(name)
                    HStack{
                        HStack(alignment: .center){
                            Spacer()
                            ForEach(types, id:\.slot){ type in
                                Text(type.type.name)
                                    .cornerRadius(10, antialiased: true)
                                    .background(.white)
                                    .lineLimit(1)
                                    .opacity(0.1)
                            }
                            Spacer()
                        }
                    }
                }
            }
        }.frame(height: 100)
            .background(.green)
            .cornerRadius(10, antialiased: true)
    }
}
