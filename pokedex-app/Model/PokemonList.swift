//
//  PokemonList.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

struct PokemonList: Decodable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [PokemonResult]

    enum CodingKeys: CodingKey {
        case count
        case next
        case previous
        case results
    }
}
