//
//  PokemonTabView.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 1/11/23.
//

import Foundation


import SwiftUI
import SwiftData

struct PokemonTabView: View {


    var body: some View {
        TabView {
            PokemonListView()
                .tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("Pokemons")
                }
        }
        .tint(.indigo)


    }


}

#Preview { PokemonTabView() }
