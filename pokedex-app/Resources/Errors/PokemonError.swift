//
//  PokemonError.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

enum PokemonError: Error, LocalizedError {
    case invalidURL
    case serverError
    case invalidData

    var errorDescription: String {
        switch self {
        case .invalidURL: return "Invalid URL, please try again"
        case .serverError: return "Error on Server, please try again later. "
        case .invalidData: return "The data on the Pokemon is invalid, please try again. "
        }
    }
}
