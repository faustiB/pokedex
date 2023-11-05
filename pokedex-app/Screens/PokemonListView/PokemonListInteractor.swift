//
//  PokemonListInteractor.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

final class PokemonListInteractor {

    func getAllPokemons() async -> [Pokemon]? { await NetworkManager.shared.getAllPokemons() }
}
