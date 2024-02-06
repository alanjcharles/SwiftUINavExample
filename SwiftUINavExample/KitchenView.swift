//
//  KitchenView.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

let room = Rooms[2]

struct KitchenView: View {
    
    @EnvironmentObject var router: Router

    var body: some View {
        VStack {
            Image(systemName: "flame.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            Text("**Kitchen**")
                .font(.system(size: 24))
                .padding(.top, 12)
            
            Button("**Go to Jane's Bedroom**") {
                router.navigate(to: .bedroom(owner: "Jane"))
            }
            .padding(.top, 12)
            
            Button("**Go to John's Bedroom**") {
                router.navigate(to: .bedroom(owner: "John"))
            }
            .padding(.top, 12)
            
            Button("**Go to Living Room**") {
                router.navigate(to: .livingroom)
            }
            .padding(.top, 12)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Back")
            }
            .padding(.top, 4)
        }
        .navigationBarBackButtonHidden()
        .padding()

    }
}

