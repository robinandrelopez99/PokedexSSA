//
//  Pokemon.swift
//  Pokedex
//
//  Created by 290023385 on 5/16/24.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id = UUID()
    var name: String
    var url: String
}

class PokemonAPI {
    static func getPokemon() -> [Pokemon] {
        let dataFromFile = Bundle.main.url(forResource: "PokemonData", withExtension: "json")!
        do {
            let data = try Data(contentsOf: dataFromFile)
            let decoder = JSONDecoder()
            let pokemonResponse = try decoder.decode([Pokemon].self, from: data)
            return pokemonResponse
        } catch {
            fatalError()
        }
    }
}
