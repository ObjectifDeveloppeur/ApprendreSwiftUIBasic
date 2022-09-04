//
//  ColorBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 02/06/2022.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        //Color.red
        //Color.primary
        //Color.secondary
        //Color(uiColor: .systemBackground)
        //Color(uiColor: .secondarySystemBackground)
        //Color.accentColor
        //Color("BackgroundPrevision")
        Color("Secondary")
            .frame(width: 300, height: 200)
            //.background(.red)
    }
}

struct ColorBasic_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorBasic()
                .preferredColorScheme(.dark)
            
            ColorBasic()
        }
    }
}
