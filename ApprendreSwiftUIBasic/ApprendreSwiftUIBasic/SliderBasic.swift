//
//  SliderBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 02/09/2022.
//

import SwiftUI

struct SliderBasic: View {
    @State private var valeurSlider = 50.0
    
    @State private var estEnEdition = false
    
    var body: some View {
        VStack {
            Slider(value: $valeurSlider,
                   in: 0...100,
                   step: 25,
                   label: {},
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text("100") },
                   onEditingChanged: { estEnEdition = $0 })
            .tint(estEnEdition ? .red : .blue)
               
            
            HStack {
                Image(systemName: "dot.radiowaves.left.and.right", variableValue: valeurSlider / 100)
                
                Text(Int(valeurSlider).description)
            }
            .font(.largeTitle)
        }
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic()
    }
}
