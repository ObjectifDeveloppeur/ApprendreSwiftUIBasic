//
//  SFSymbolsBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 12/07/2022.
//

import SwiftUI

struct SFSymbolsBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "heart")
                
                Text("Hello, World!")
            }
            .font(.title.weight(.heavy))
            .imageScale(.small)
            .foregroundColor(.red)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(.linearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
            
            Image(systemName: "heart")
                .foregroundStyle(.linearGradient(colors: [.yellow, .blue], startPoint: .leading, endPoint: .trailing))
                .symbolVariant(.circle.slash)
            
            Image(systemName: "person.3.sequence.fill")
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.purple)
            
            Image(systemName: "person.3.sequence.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .white, .red)
                .background(.black)
            
            HStack {
                Image(systemName: "leaf")
                
                Image(systemName: "heart")
                
                Image(systemName: "sun.max.fill")
            }
            .symbolRenderingMode(.multicolor)
            
            Image(systemName: "mic.and.signal.meter.fill", variableValue: 0.9)
        }
    }
}

struct SFSymbolsBasic_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsBasic()
    }
}
