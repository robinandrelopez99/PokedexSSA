//
//  PokedexView.swift
//  Pokedex
//
//  Created by 290023385 on 5/16/24.
//

import SwiftUI

struct PokedexViewFinal: View {

    var allPokemon: [Pokemon] {
        return PokemonAPI.getPokemon()
    }

    var body: some View {
        NavigationView {
            List {
                //MARK: In Here add a List component
                ForEach(allPokemon) { pokemon in
                    NavigationLink(destination: {
                        PokemonDetailViewFinal(pokemon: pokemon)
                    }, label: {
                        PokemonRowFinal(pokemon: pokemon)
                    })

                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokemonRowFinal: View {
    let pokemon: Pokemon

    var body: some View {
        HStack {
            //MARK: Here add the image of the pokemon and the pokemon name
            AsyncImage(url: URL(string: pokemon.url), content: { img in
                img
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
            }, placeholder: {
                Rectangle()
                    .frame(width: 50, height: 50, alignment: .leading)
            })
            
            Text(pokemon.name)
        }
    }
}

#Preview {
    PokedexViewFinal()
}
