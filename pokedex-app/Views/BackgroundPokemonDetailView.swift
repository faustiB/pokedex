//
//  BackgroundPokemonDetailView.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 7/11/23.
//

import SwiftUI

struct BackgroundPokemonDetailView: View {
    var backgroundColor: Color
    
    var body: some View {
        LinearGradient(colors: [backgroundColor,  Color(UIColor.systemBackground)],
                       startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
        .opacity(0.5)
    }
}

#Preview {
    BackgroundPokemonDetailView(backgroundColor: .green)
}
