//
//  PokemonAsyncImage.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 7/11/23.
//

import SwiftUI

struct PokemonAsyncImage: View {
    let urlString: String
    var body: some View {
        AsyncImage(url: URL(string: urlString )) { phase in
            switch phase {
            case .empty:
                ProgressView().progressViewStyle(.circular)
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            case .failure(let _):
                Text("Failed to load image, sorry...")
                    .frame(width: 180, height: 160)
            @unknown default:
                Text("Something went wrong... Try again later.")
            }
        }
    }
}

#Preview {
    PokemonAsyncImage(urlString: MockData.pokemon.sprites.other.officialArtwork.frontDefault)
}
