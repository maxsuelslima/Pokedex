//
//  Evolution.swift
//  PokedexMVVM (iOS)
//
//  Created by maxsuel on 26/05/22.
//

import Foundation

struct Evolution{
    var especieName:String
    var evolvesTo:String
    var trigger:String
    init(especieName:String, evolvesTo:String, trigger:String){
        self.especieName = especieName
        self.evolvesTo = evolvesTo
        self.trigger = trigger
    }
}
