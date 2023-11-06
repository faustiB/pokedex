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
    }
}

#Preview {
    PokemonAsyncImage(urlString: MockData.pokemon.sprites.other.officialArtwork.frontDefault)
}
