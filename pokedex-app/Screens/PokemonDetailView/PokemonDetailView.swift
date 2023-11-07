//
//  PokemonDetailView.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 7/11/23.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    let backgroundColor: Color
    var body: some View {
        ZStack {
            BackgroundPokemonDetailView(backgroundColor: backgroundColor)
            Text(pokemon.name)
                .font(.largeTitle)

        }
    }
}

#Preview {
    PokemonDetailView(pokemon: MockData.pokemon, backgroundColor: .green)
}
