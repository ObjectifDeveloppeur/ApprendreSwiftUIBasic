//
//  Episode.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 11/08/2022.
//

import SwiftUI

struct Episode: Identifiable {
    let id = UUID()
    
    let titre: String
    let url: URL?
    let view: AnyView
    
    init(titre: String, urlString: String, view: some View) {
        self.titre = titre
        self.url = URL(string: urlString)
        self.view = AnyView(view)
    }
}


extension Episode {
    static let all: [Episode] = [
        .init(titre: "Texte & Police",
              urlString: "https://www.youtube.com/watch?v=qCftKmgPpz4&t=2s",
              view: TextBasic()),
        .init(titre: "Formes",
              urlString: "https://www.youtube.com/watch?v=fs52CPX-Z9g",
              view: ShapeBasic()),
        .init(titre: "Image",
              urlString: "https://www.youtube.com/watch?v=egBUS-IzSoU&t=1s",
              view: ImageBasic()),
        .init(titre: "Couleur",
              urlString: "https://www.youtube.com/watch?v=9mFW3es0wAg&t=56s",
              view: ColorBasic()),
        .init(titre: "Stacks",
              urlString: "https://www.youtube.com/watch?v=AyxAaDG0WYM",
              view: ContainersBasic()),
        .init(titre: "SF Symbols",
              urlString: "https://www.youtube.com/watch?v=czncLuG0Xwc",
              view: SFSymbolsBasic()),
        .init(titre: "ForEach",
              urlString: "https://www.youtube.com/watch?v=it78GPSz_Ao&t=879s",
              view: ForEachBasic()),
        .init(titre: "Slider",
              urlString: "https://www.youtube.com/watch?v=it78GPSz_Ao&t=879s",
              view: SliderBasic())
    ]
}
