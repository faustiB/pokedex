//
//  PokemonMove.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 6/11/23.
//

import Foundation

struct PokemonMove: Decodable, Hashable {
    var move: PokemonMoveDetail
}

struct PokemonMoveDetail: Decodable, Hashable {
    var name: String
    var url: String
}
