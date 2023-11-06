//
//  MockData.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 5/11/23.
//

import Foundation

struct MockData {
    static let urlFront = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"
    static let urlFrontShiny = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/1.png"
    static let pokemonTypes = [PokemonType(slot: 1, type: PokemonTypeDetail(name: "grass", url: "https://pokeapi.co/api/v2/type/12/"))]
    static let pokemon = Pokemon(id: 1,
                                 name: "Bulbasur",
                                 height: 10,
                                 weight: 10,
                                 order: 1,
                                 sprites: PokemonSprites(other: PokemonOtherSprites(officialArtwork: PokemonOfficialArtwork(frontDefault: urlFront,
                                                                                                                            frontShiny: urlFrontShiny))),
                                 types: pokemonTypes)
}
