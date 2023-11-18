//
//  PokemonListCell.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 3/11/23.
//

import SwiftUI

struct PokemonListCell: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonListViewModel

    var body: some View {
        VStack(alignment: .center, spacing: 8) {

            PokemonAsyncImage(urlString: pokemon.sprites.other.officialArtwork.frontDefault)

            Text(pokemon.name)
                .font(.system(.title2, design: .monospaced, weight: .semibold))

            HStack {
                PhysicalAttributeText(text: "\(viewModel.heightInCentietres(heightInDecimetres: pokemon.height)) cms")
                    .padding(.leading)

                Spacer()

                PhysicalAttributeText(text: "\(viewModel.weightInKiloGrams(weightInHectoGrams: pokemon.weight)) kg")
                    .padding(.trailing)

            }
            .padding(.bottom)

        }
        .frame(width: 160, height: 240)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: viewModel.getColorForType(typeString: pokemon.types.first?.type.name ?? "normal") ?? .gray,
                radius: 8)
        .padding(.top, 16)
    }
}

#Preview {
    PokemonListCell(pokemon: MockData.pokemon, viewModel: PokemonListViewModel())
}
