//
//  PokemonListViewModel.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation
import SwiftUI

final class PokemonListViewModel: ObservableObject {

    @Published var pokemonList: [Pokemon]? = []
    @Published var isLoading = false

    private var pokemonResult: PokemonList?
    private let interactor: PokemonListInteractor = PokemonListInteractor()
    let gridColumns = [
        GridItem(.fixed(190)),
        GridItem(.fixed(190))
    ]

    func loadPokemons() {
        Task(priority: .medium) {
            await getAllPokemons()
        }
    }

    func weightInKiloGrams(weightInHectoGrams: Int) -> String {
        let newWeight = Double(weightInHectoGrams) / 10
        let weighToReturn = String(format: "%.2f", newWeight)
        return weighToReturn
    }

    func heightInCentietres(heightInDecimetres: Int) -> Int { heightInDecimetres * 10}
    
    func getColorForType(typeString: String) -> Color? {
        if let type = PokemonTypeColor(rawValue: typeString) {
            return type.color
        }
        return nil
    }
    
    func shufflePokemons() {
        pokemonList?.shuffle()
    }

    @MainActor
    fileprivate func getAllPokemons() async {
        isLoading = true
        if let nextPokemons = await interactor.getAllPokemons() {
            pokemonList?.append(contentsOf: nextPokemons)
            isLoading = false
        }
    }
}
