//
//  ChampionsViewModel.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import Foundation


class ChampionsViewModel: ObservableObject {
    @Published var champions: [Champion] = []
    
    init() {
        load()
    }
    
    func load() {
        champions = ChampionService.loadChampions()
    }
}
