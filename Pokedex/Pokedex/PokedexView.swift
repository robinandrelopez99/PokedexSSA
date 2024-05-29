//
//  PokedexView.swift
//  Pokedex
//
//  Created by 290023385 on 5/29/24.
//

import SwiftUI

struct PokedexView: View {

    var allPokemon: [Pokemon] {
        return PokemonAPI.getPokemon()
    }

    var body: some View {
        NavigationView {
            //MARK: Here add a List component
            //MARK: Inside the list component add a ForEach component that iterates over the allPokemon list seen above and uses a PokemonRow for each pokemon
            //MARK: To the List component, add a .navigationTitle() modifier to give the screen a proper title
        }
    }
}

struct PokemonRow: View {
    let pokemon: Pokemon

    var body: some View {
        //MARK: Here add an HStack that encapsulates the Image and Text
        AsyncImage(url: URL(string: pokemon.url),
                   content: { img in
                img
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
        },
                   placeholder: {
            //MARK: Here add a Rectangle component with a frame of 50x50 so that we have a placeholder in case the images don't load

        })

        //MARK: Here add a Text component that uses the pokemon name

    }
}

#Preview {
    PokedexView()
}
