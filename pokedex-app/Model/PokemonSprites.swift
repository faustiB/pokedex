//
//  PokemonSprites.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 3/11/23.
//

import Foundation

struct PokemonSprites: Decodable, Hashable {
    var other: PokemonOtherSprites
}

struct PokemonOtherSprites: Decodable, Hashable {
    var officialArtwork: PokemonOfficialArtwork
    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}

struct PokemonOfficialArtwork: Decodable, Hashable {
    var frontDefault: String
    var frontShiny: String

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}
