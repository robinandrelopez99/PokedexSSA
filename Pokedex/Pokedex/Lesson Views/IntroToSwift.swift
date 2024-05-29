//
//  IntroToSwift.swift
//  Pokedex
//
//  Created by 290023385 on 5/16/24.
//

import Foundation
import SwiftUI

// Types
// Int, Bool, String, Double, Float, Custom Types (class or struct)


// Variables
var pokemon: String = "Pikachu"


// Functions && Interpolation
func catchPokemon(pokemon: String) -> String {
    return "You have captured \(pokemon)"
}


// For Loop
func showLoops() -> Int {
    for i in 0...10 {
        return i
    }
    return 0
}

/// Can someone name 3 types?
/// What is the Type of the variable above?
/// What does the -> represent?
/// How many times will this loop execute?
