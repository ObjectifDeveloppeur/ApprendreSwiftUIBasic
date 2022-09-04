//
//  Prevision.swift
//  ApprendreSwiftUIBasic
//
//  Created by Maxime Lathiere on 08/08/2022.
//

import Foundation


struct Prevision: Identifiable {
    let id = UUID()
    
    let date: String
    let symbole: String
    let temperature: Int
}


extension Prevision {
    static let previsionsSur10j: [Prevision] = [
        Prevision(date: "Auj.", symbole: "sun.max", temperature: 32),
        Prevision(date: "Mar.", symbole: "cloud.sun.rain", temperature: 30),
        Prevision(date: "Mer.", symbole: "cloud.sun", temperature: 32),
        Prevision(date: "Jeu.", symbole: "sun.max", temperature: 27),
        Prevision(date: "Ven.", symbole: "cloud.sun", temperature: 28),
        Prevision(date: "Sam.", symbole: "sun.max", temperature: 29),
        Prevision(date: "Dim.", symbole: "sun.max", temperature: 27),
        Prevision(date: "Lun.", symbole: "cloud.sun", temperature: 28),
        Prevision(date: "Mar.", symbole: "sun.max", temperature: 30),
        Prevision(date: "Mer.", symbole: "cloud.sun", temperature: 32),
    ]
}
