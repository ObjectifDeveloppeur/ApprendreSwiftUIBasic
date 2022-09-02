//
//  ContainersBasic.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 11/06/2022.
//

import SwiftUI

struct ContainersBasic: View {
    var body: some View {
//        HStack(alignment: .lastTextBaseline, spacing: 0) {
//            Text("1")
//                .font(.largeTitle)
//                .frame(width: 100, height: 200)
//                .background(.indigo)
//                //.foregroundColor(.green)
//
//            Text("2")
//                .font(.largeTitle)
//                .frame(width: 100, height: 100)
//                .background(.yellow)
//
//            Text("3")
//                .font(.largeTitle)
//                .frame(width: 100, height: 100)
//                .background(.pink)
//        }
//        .border(.black, width: 5)
//        .foregroundColor(.white)
        
//        VStack(alignment: .trailing, spacing: 120) {
//            Text("1")
//                .font(.largeTitle)
//                .frame(width: 200, height: 100)
//                .background(.indigo)
//                //.foregroundColor(.green)
//
//            Text("2")
//                .font(.largeTitle)
//                .frame(width: 100, height: 100)
//                .background(.yellow)
//
//            Text("3")
//                .font(.largeTitle)
//                .frame(width: 100, height: 100)
//                .background(.pink)
//        }
//        .border(.black, width: 5)
        
//        ZStack(alignment: .topLeading) {
//            Text("1")
//                .font(.largeTitle)
//                .frame(width: 100, height: 700)
//                .background(.indigo)
//                //.foregroundColor(.green)
//
//            Text("2")
//                .font(.largeTitle)
//                .frame(width: 350, height: 100)
//                .background(.yellow)
//
//            Text("3")
//                .font(.largeTitle)
//                .frame(width: 100, height: 100)
//                .background(.pink)
//                //.opacity(0.5)
//        }
//        .border(.black, width: 5)
        
        ZStack {
            Color.black
            
            VStack {
                HStack {
                    Color.blue
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                    
                    Color.yellow
                        .frame(width: 100, height: 100)
                }
                
                
                Spacer()
                
                HStack {
                    Color.green
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                    
                    Color.pink
                        .frame(width: 100, height: 100)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContainersBasic_Previews: PreviewProvider {
    static var previews: some View {
        ContainersBasic()
    }
}
