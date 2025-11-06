//
//  Untitled.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import SwiftUI


struct ChampionsData: Decodable {
    let data: [String: Champion]
}

struct Champion: Decodable, Identifiable {
    let id: String
    let name: String
    let title: String
    let image: ChampionImage
    let tags: [String]
    let blurb: String
    let role:  [String]
    let skins: [Skin]
}

struct Skin: Identifiable, Codable {
    let id: Int
    let name: String
    let imageUrl: String
}

struct ChampionImage: Decodable {
    let full: String
    let url: String
}
