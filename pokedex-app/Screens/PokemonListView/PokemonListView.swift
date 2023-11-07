//
//  PokemonListView.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import SwiftUI

struct PokemonListView: View {

    @StateObject var viewModel: PokemonListViewModel = PokemonListViewModel()

    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView(.vertical) {
                    LazyVGrid(columns: viewModel.gridColumns) {
                        ForEach(viewModel.pokemonList ?? [], id: \.order) { pokemon in
                            NavigationLink(value: pokemon) {
                                PokemonListCell(pokemon: pokemon, viewModel: viewModel)
                                    .onAppear{
                                        if pokemon.id == viewModel.pokemonList?.last?.id {
                                            viewModel.loadPokemons()
                                        }
                                    }
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                .navigationTitle("🐿️ Pokemons")
                .navigationDestination(for: Pokemon.self) { pokemon in
                    PokemonDetailView(pokemon: pokemon,
                                      backgroundColor: viewModel.getColorForType(typeString: pokemon.types.first?.type.name ?? "") ?? .gray)
                }
            }

        }
        .onAppear {
            viewModel.loadPokemons()
        }
    }
}

#Preview {
    PokemonListView()
}

