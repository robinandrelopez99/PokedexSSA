//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by 290023385 on 5/16/24.
//

import SwiftUI

struct PokemonDetailViewFinal: View {
    let pokemon: Pokemon

    var body: some View {
        VStack {
            Spacer()
            Text(pokemon.name.capitalized)
                .font(.title)
            AsyncImage(url: URL(string: pokemon.url), content: { img in
                img
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .leading)
            }, placeholder: {
                Rectangle()
                    .frame(width: 150, height: 150, alignment: .leading)
            })
            Spacer()
            Text("Attack: over 9000!")
            Text("Defense")
            Spacer()
        }
    }
}

#Preview {
    PokemonDetailViewFinal(pokemon: Pokemon(name: "bulbasaur", url: ""))
}
