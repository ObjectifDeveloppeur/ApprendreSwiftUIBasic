//
//  Chanson.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 09/08/2022.
//

import SwiftUI


//MARK: - Model Chanson
struct Chanson {
    let titre: String
    let artiste: String
    
    var pochette: Image {
        Image(titre)
    }
}

//MARK: - Exemple d'une chanson
extension Chanson {
    static let exemple = Chanson(titre: "West Coast", artiste: "OneRepublic")
}
