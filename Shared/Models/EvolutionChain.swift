//
//  File.swift
//  PokedexMVVM (iOS)
//
//  Created by maxsuel on 26/05/22.
//

import Foundation

struct EvolutionChain{
    var chain:[Evolution]
    
    init(evolution:Evolution){
        self.chain = chain.append(evolution)
    }
}
