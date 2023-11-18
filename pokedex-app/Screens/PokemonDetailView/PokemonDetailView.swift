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

            VStack {

                    PokemonAsyncImage(urlString: pokemon.sprites.other.officialArtwork.frontShiny)
                        .frame(width: 180, height: 180)

                    VStack{
                        Text("\(pokemon.id) - \(pokemon.name)")
                            .fontDesign(.monospaced)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                        //TODO: Add characteristics, (weigh height etc )
                        //TODO: Box with all the moves (list) and then detail of move with api call to get data.
                    }

                Spacer()
            }

        }
    }
}

#Preview {
    PokemonDetailView(pokemon: MockData.pokemon, backgroundColor: .green)
}
