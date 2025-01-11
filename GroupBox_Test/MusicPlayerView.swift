//
//  MusicPlayerView.swift
//  GroupBox_Test
//
//  Created by Kyle-Anthony Hay on 1/10/25.
//

import SwiftUI

struct MusicPlayerView: View {
    var body: some View {
        GroupBox {
            GroupBox {
                VStack {
                    // MARK: Title
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.secondary)
                        VStack {
                            Text("Music Player").font(.headline.bold())
                            Text("Artist Name").font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                    }.padding(.bottom, 10)
                    // MARK: Progress View
                    ProgressView(value: 0.4, total: 1)
                        .tint(.secondary)
                        .padding(.bottom, 20)
                    // MARK: Buttons
                    HStack (spacing: 30){
                        Image(systemName: "backward.fill")
                        Image(systemName: "play.fill")
                        Image(systemName : "forward.fill")
                    }.foregroundStyle(.secondary)
                        .font(.title)
                }
            }
        } label: {
            Label("Now Playing", systemImage: "music.note")
        }
        .groupBoxStyle(.music)
    }
}



struct MusicGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack (alignment: .leading) {
            configuration.label
                .bold()
                .foregroundStyle(.pink)
            configuration.content
        }
        .padding()
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
    }
}

extension GroupBoxStyle where Self == MusicGroupBoxStyle {
    static var music: MusicGroupBoxStyle { .init() }
}
#Preview {
    MusicPlayerView()
}