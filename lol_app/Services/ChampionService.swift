//
//  ChampionService.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import Foundation

class ChampionService {
    static func loadChampions() -> [Champion] {
        guard let url = Bundle.main.url(forResource: "champions", withExtension: "json") else {
            print(" champions.json introuvable")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(ChampionsData.self, from: data)
            return Array(decoded.data.values)
        } catch {
            print("Erreur JSON :", error)
            return []
        }
    }
}
