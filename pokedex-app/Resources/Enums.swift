//
//  Enums.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 7/11/23.
//

import SwiftUI

enum PokemonTypeColor: String, Identifiable {
    case normal
    case fighting
    case flying
    case poison
    case ground
    case rock
    case bug
    case ghost
    case steel
    case fire
    case water
    case grass
    case electric
    case psychic
    case ice
    case dragon
    case dark
    case fairy
    case unknown
    case shadow

    var id: String { self.rawValue }

    var color: Color {
        switch self {
        case .normal: return Color.gray
        case .fighting: return Color.indigo
        case .flying: return Color.blue
        case .poison: return Color.purple
        case .ground: return Color.brown
        case .rock: return Color.brown
        case .bug: return Color.mint
        case .ghost: return Color.black
        case .steel: return Color.gray
        case .fire: return Color.red
        case .water: return Color.cyan
        case .grass: return Color.green
        case .electric: return Color.yellow
        case .psychic: return Color.purple
        case .ice: return Color.blue
        case .dragon: return Color.orange
        case .dark: return Color.black
        case .fairy: return Color.pink
        case .unknown: return Color.gray
        case .shadow: return Color.gray
        }
    }
}
