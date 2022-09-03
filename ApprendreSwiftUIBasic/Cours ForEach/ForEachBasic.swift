//
//  ForEachBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 02/08/2022.
//

import SwiftUI

struct ForEachBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            titre
            
            ForEach(Prevision.previsionsSur10j, content: PrevisionInfoView.init)
            
        }
        .padding()
        .background(Color("BackgroundPrevision"))
        .cornerRadius(12)
        .padding(.horizontal)
        .font(.title2)
    }
}

private extension ForEachBasic {
    var titre: some View {
        Label("Prévisions sur 10 jours", systemImage: "calendar")
            .foregroundStyle(.thinMaterial)
    }
}

struct ForEachBasic_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBasic()
    }
}



