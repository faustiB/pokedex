//
//  PokemonResult.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

struct PokemonResult: Decodable {
    var name: String
    var url: String

    enum CodingKeys: CodingKey {
        case name
        case url
    }
}
