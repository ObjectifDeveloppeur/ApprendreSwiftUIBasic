//
//  PrevisionInfoView.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 08/08/2022.
//

import SwiftUI

struct PrevisionInfoView: View {
    let prevision: Prevision
    
    var body: some View {
        VStack {
            Divider()
                .overlay(.white)
            
            HStack {
                Text(prevision.date)
                
                Image(systemName: prevision.symbole)
                    .frame(maxWidth: .infinity)
                    .symbolVariant(.fill)
                    .symbolRenderingMode(.multicolor)
                
                Text("\(prevision.temperature)°")
            }
            .foregroundColor(.white)
        }
    }
}

struct PrevisionInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PrevisionInfoView(prevision: Prevision.previsionsSur10j[0])
            .background(Color("BackgroundPrevision"))
            .font(.title2)
    }
}
