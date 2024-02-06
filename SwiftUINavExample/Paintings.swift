//
//  Paintings.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

public struct Painting: Identifiable, Hashable {
   public var id = UUID()
    let name: String
    let author: String
    
   public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public var Paintings: [Painting] = [
    Painting(name: "Mona Lisa", author: "Leonardo Da Vinci"),
    Painting(name: "Starry Night", author: "Pablo Picasso" ),
    Painting(name: "Campbells Soup Can",  author: "Andy Warhol")
]

