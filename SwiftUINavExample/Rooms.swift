//
//  Rooms.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

public struct Room: Identifiable, Hashable {
   public var id = UUID()
    let name: String
    let image: Image
    
   public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

public var Rooms: [Room] = [
    Room(name: "Living Room", image: Image("couch")),
    Room(name: "Bedroom", image: Image("bed")),
    Room(name: "Kitchen", image: Image("kitchen"))
]
