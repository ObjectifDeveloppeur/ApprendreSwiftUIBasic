//
//  ContentView.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(Episode.all) { episode in
                NavigationLink(episode.titre) {
                    EpisodeDetailView(episode: episode)
                }
            }
            .navigationTitle("Cours")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
