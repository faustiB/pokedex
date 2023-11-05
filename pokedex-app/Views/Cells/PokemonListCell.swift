//
//  PokemonListCell.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 3/11/23.
//

import SwiftUI

struct PokemonListCell: View {
    @Environment(\.colorScheme) var colorScheme
    let pokemon: Pokemon
    let viewModel: PokemonListViewModel

    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            AsyncImage(url: URL(string: pokemon.sprites.other.officialArtwork.frontDefault )) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .failure(let error):
                    Text("Error: \(error.localizedDescription)")
                @unknown default:
                    Text("Something went wrong... Try again later.")
                }
            }
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
        .background(Color.brandPrimary)
        .border(.gray)
        .shadow(color: .gray, radius: 10)
        .padding(.top, 16)
    }
}

#Preview {
    PokemonListCell(pokemon: MockData.pokemon, viewModel: PokemonListViewModel())
}
