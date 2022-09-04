//
//  ButtonBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 09/08/2022.
//

import SwiftUI

struct ButtonBasic: View {
    @State private var compteur = 0
    @State private var estAbonne = false
    
    var body: some View {
        VStack(spacing: 100) {
            HStack {
                Button("Ajouter") {
                    compteur += 1
                }
                
                Spacer()
                
                Text(compteur.description)
            }
            .padding()
            
            Button(estAbonne ? "Abonné" : "S'abonner") {
                estAbonne.toggle()
            }
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            
            Button {
                // mettre l'action
            } label: {
                VStack {
                    Image("montagne")
                        .resizable()
                        .scaledToFill()
                    .frame(width: 300, height: 200)
                    
                    Text("Montagne")
                }
            }

        }
    }
}

struct ButtonBasic_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBasic()
    }
}
