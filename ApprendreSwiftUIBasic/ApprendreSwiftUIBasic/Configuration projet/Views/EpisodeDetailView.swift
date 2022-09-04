//
//  EpisodeDetailView.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 11/08/2022.
//

import SwiftUI

struct EpisodeDetailView: View {
    let  episode: Episode
    
    @State private var voirLeCours = false
    
    var body: some View {
        episode.view
            .navigationTitle(episode.titre)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Voir le cours") {
                    voirLeCours.toggle()
                }
            }
            .sheet(isPresented: $voirLeCours) {
                if let url = episode.url {
                    WebView(url: url)
                } else {
                    Text("Lien manquant, merci de vous rendre directement sur YouTube")
                }
            }
    }
}


struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            EpisodeDetailView(episode: Episode.all.first!)
        }
    }
}
