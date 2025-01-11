//
//  ContentView.swift
//  GroupBox_Test
//
//  Created by Kyle-Anthony Hay on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.teal.gradient.opacity(0.6))
                .ignoresSafeArea()
            VStack {
                MusicPlayerView()
            }.padding()
        }
        
    }
}

#Preview {
    ContentView()
}

