//
//  PhysicalAttributeText.swift
//  pokedex-app
//
//  Created by Faozi Bouybaouene on 5/11/23.
//

import SwiftUI

struct PhysicalAttributeText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.caption)
            .italic()
    }
}
