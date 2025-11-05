//
//  lol_appApp.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//


import SwiftUI

@main
struct lol_appApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                NavigationLink("Voir les champions") {
                    ChampionView()
                }
               // .navigationTitle("Accueil")
            }
        }
    }
}

