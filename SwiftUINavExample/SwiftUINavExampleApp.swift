//
//  SwiftUINavExampleApp.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

@main
struct SwiftUINavExampleApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                HomeView(rooms: Rooms)
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .livingroom:
                        LivingRoomView()
                    case .bedroom(let owner):
                        BedroomView(owner: owner)
                    case .kitchen:
                        KitchenView()
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
