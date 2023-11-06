//
//  Pokemon.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {

    var id: Int
    var name: String
    var height: Int
    var weight: Int
    var order: Int
    var sprites: PokemonSprites
    var types: [PokemonType]


}
