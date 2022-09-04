//
//  ImageBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 13/04/2022.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        Image("montagne")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            //.clipped()
            //.cornerRadius(20)
            .clipShape(Circle())
            //.border(.yellow, width: 5)
            .overlay(
                Circle()
                    .strokeBorder(.white, lineWidth: 6)
                    .shadow(radius: 4)
            )
            //.saturation(0)
            //.luminanceToAlpha()
    }
}

struct ImageBasic_Previews: PreviewProvider {
    static var previews: some View {
        ImageBasic()
    }
}
