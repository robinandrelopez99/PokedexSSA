//
//  IntroToSwiftUI.swift
//  Pokedex
//
//  Created by 290023385 on 5/16/24.
//

import SwiftUI

struct IntroToSwiftUI: View {

    var body: some View {
        HStack {
            Circle()
                .frame(width: 100, height: 100)

            VStack {
                Text("Pikachu")
                    .font(.title)
                Text("I Choose You!")
                    .font(.subheadline)
            }


            Circle()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    IntroToSwiftUI()
}
