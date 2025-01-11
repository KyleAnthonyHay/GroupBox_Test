//
//  ContentView.swift
//  GroupBox_Test
//
//  Created by Kyle-Anthony Hay on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GroupBox("My Content") {
                Text("Hello, World!")
            }.frame(width: 240)
                .groupBoxStyle(.music)
            
            MusicPlayerView()
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

