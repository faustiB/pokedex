//
//  PokemonType.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 6/11/23.
//

import Foundation

struct PokemonType: Decodable {
    var slot: Int
    var type: PokemonTypeDetail
}

struct PokemonTypeDetail: Decodable {
    var name: String
    var url: String
}
