//
//  ShapeBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 12/04/2022.
//  https://youtu.be/fs52CPX-Z9g

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        Circle()
        //Ellipse()
        //Capsule()
        //Rectangle()
        //RoundedRectangle(cornerRadius: 20, style: RoundedCornerStyle.continuous)
            //.fill(.purple)
            .trim(from: 0.5, to: 0.9)
            .stroke(.linearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing), style: StrokeStyle(lineWidth: 7, lineCap: .round))
            //.strokeBorder(lineWidth: 7)
            //.strokeBorder(.red, lineWidth: 7)
            //.strokeBorder(.red, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [10, 30]))
            .frame(width: 300, height: 200)
            //.foregroundColor(.purple)
            //.foregroundStyle(.linearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing))
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
