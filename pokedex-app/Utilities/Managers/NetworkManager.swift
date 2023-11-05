//
//  NetworkManager.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation

final class NetworkManager {

    private var nextUrl: String?
    private var firstRun = true

    static var shared = NetworkManager()

    func getAllPokemons() async -> [Pokemon]? {
        var pokemonResultsImages:[Pokemon]? = []

        do {
            if firstRun {
                nextUrl = Constants.Endpoints.allPokemons
                firstRun = false
            }

            guard let url = URL(string: nextUrl ?? "" ) else { throw PokemonError.invalidURL }

            let pokemonResults = try await fetchResults(url: url, responseType: PokemonList.self)
            nextUrl = pokemonResults.next
            try await fetchPokemons(url, &pokemonResultsImages)


        } catch {
            print(error.localizedDescription)
        }
        return pokemonResultsImages
    }

//    func getNextPokemons() async -> [Pokemon]? {
//        var pokemonResultsImages:[Pokemon]? = []
//
//        do {
//            guard let url = URL(string: nextUrl ?? "") else { throw PokemonError.invalidURL }
//            let pokemonResults = try await fetchResults(url: url, responseType: PokemonList.self)
//            nextUrl = pokemonResults.next
//            try await fetchPokemons(url, &pokemonResultsImages)
//
//        } catch {
//            print(error.localizedDescription)
//        }
//        return pokemonResultsImages
//    }


    //MARK: Private Functions

    fileprivate func fetchPokemons(_ url: URL, _ pokemonResultsImages: inout [Pokemon]?) async throws {
        let pokemonResults = try await fetchResults(url: url, responseType: PokemonList.self)

        for result in pokemonResults.results {
            guard let pokemonUrl = URL(string: result.url) else { throw PokemonError.invalidURL }
            let pokemon = try await fetchResults(url: pokemonUrl, responseType: Pokemon.self)
            pokemonResultsImages?.append(pokemon)
        }
    }


    fileprivate func fetchResults<T: Decodable>(url: URL, responseType: T.Type) async throws -> T {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw PokemonError.serverError }
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else { throw PokemonError.invalidData }

        return decodedData
    }


}
