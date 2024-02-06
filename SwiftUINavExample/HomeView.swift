//
//  HomeView.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router
    
    @State private var navPath = NavigationPath()
    private var rooms = [Room]()
    
    init(rooms: [Room]) {
        self.rooms = rooms
        rooms.forEach { navPath.append($0)}
    }
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 56))
                    .foregroundColor(.accentColor)
                Text("**Home**")
                    .font(.system(size: 24))
                
                Button("**Go to Living Room**") {
                    router.navigate(to: .livingroom)
                }
                .padding()
            }
        }
    }
}


