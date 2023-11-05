//
//  Constants.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

struct Constants {
    
    private static let baseURL = "https://pokeapi.co/api/v2/"

    struct Endpoints {
        static let allPokemons = baseURL + "pokemon"
    }
}
