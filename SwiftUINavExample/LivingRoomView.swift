//
//  LivingRoomView.swift
//  SwiftUINavExample
//
//  Created by Alan Charles on 2/6/24.
//

import SwiftUI

let currentRoom = Rooms[0]

struct LivingRoomView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "sofa.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            Text("**Living Room**")
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
            
            Button("**Go to Kitchen**") {
                router.navigate(to: .kitchen)
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
