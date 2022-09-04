//
//  TextBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 12/04/2022.
//  https://youtu.be/qCftKmgPpz4

import SwiftUI

struct TextBasic: View {
    var body: some View {
        Text("Bienvenue sur la chaîne, j'espère que vous passerez un bon moment et que vous apprendrez énormément de chose avec moi! Bon visionnage et à très vite!")
            .font(.custom("Times New Roman", size: 28, relativeTo: .title))
            //.font(.title)
            //.font(.system(.title, design: .monospaced))
            //.font(.system(size: 35))
            //.bold()
            //.fontWeight(.heavy)
            //.italic()
            //.underline()
            //.foregroundColor(.red)//
            //.multilineTextAlignment(.leading)
            //.lineLimit(3)
            //.lineSpacing(20)
            //.kerning(12)
            //.frame(height: 100)
            //.minimumScaleFactor(0.5)
            .padding()
    }
}

struct TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextBasic()
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
