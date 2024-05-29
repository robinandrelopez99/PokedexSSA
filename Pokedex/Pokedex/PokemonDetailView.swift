//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by 290023385 on 5/29/24.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            Spacer()
            //MARK: Here add a Text component that uses the pokemon name and give it a font value of ".title"
            AsyncImage(url: URL(string: pokemon.url), content: { img in
                img
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .leading)
            }, placeholder: {
                //MARK: Here add a Rectangle component with a frame of 150x150 so that we have a placeholder in case the images don't load
            })
            
            Spacer()
            //MARK: Here add two text components, one with a string that describes the attack and another that describes the defense
            Spacer()
        }
    }
}

#Preview {
    PokemonDetailView(pokemon: Pokemon(name: "Bulbasaur", url: ""))
}
