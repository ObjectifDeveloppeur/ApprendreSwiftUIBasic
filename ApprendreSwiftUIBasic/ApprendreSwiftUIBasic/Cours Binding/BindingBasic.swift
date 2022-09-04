//
//  BindingBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 09/08/2022.
//

import SwiftUI

struct BindingBasic: View {
    let chanson: Chanson
    
    @State private var estEnLecture = false
    
    var body: some View {
        VStack {
            Text(estEnLecture ? "Lecture" : "Pause")
                .font(.largeTitle)
            
            HStack {
                pochetteChanson
                infosChanson
                
                Spacer()
                
                BoutonPlay(estEnLecture: $estEnLecture)

            }
            .padding()
            .background(Color("PlayerBackground"))
            .cornerRadius(8)
            .padding()
            .foregroundColor(.white)
        }
    }
}

private extension BindingBasic {
    var pochetteChanson: some View {
        chanson.pochette
            .resizable()
            .scaledToFill()
            .frame(width: 75, height: 75)
            .clipped()
    }
    
    var infosChanson: some View {
        VStack {
            Text(chanson.titre)
                .font(.headline)
            
            Text(chanson.artiste)
                .font(.subheadline)
        }
    }
}

struct BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        BindingBasic(chanson: Chanson.exemple)
        BoutonPlay(estEnLecture: .constant(true))
    }
}

struct BoutonPlay: View {
    @Binding var estEnLecture: Bool
    var body: some View {
        Button {
            estEnLecture.toggle()
        } label: {
            Image(systemName: estEnLecture ? "pause" : "play")
                .symbolVariant(.fill)
                .font(.largeTitle)
        }
    }
}
