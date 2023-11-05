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
                            PokemonListCell(pokemon: pokemon, viewModel: viewModel)
                                .onAppear{
                                    if pokemon.id == viewModel.pokemonList?.last?.id {
                                        viewModel.loadPokemons()
                                    }
                                }
                                .onTapGesture {
                                    //TODO: Detail view, decide what kind of detail view I want. 
                                    print(pokemon.name)
                                }
                        }
                    }
                }.navigationTitle("🐿️ Pokemons")
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

