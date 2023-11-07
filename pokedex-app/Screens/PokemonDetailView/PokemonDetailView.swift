//
//  PokemonDetailView.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 7/11/23.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    var body: some View {
        Text(pokemon.name)
    }
}

#Preview {
    PokemonDetailView(pokemon: MockData.pokemon)
}
