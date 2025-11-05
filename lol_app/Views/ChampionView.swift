    //
//  ChampView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//


import SwiftUI
import PhotosUI

// SwiftUI ContentView
struct ChampionView: View {
    @StateObject private var championModel = ChampionsViewModel()
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            
        //    SearchBarView(searchText: $searchText)
            List(championModel.champions, id: \.id) { champ in
                NavigationLink(destination: ChampionDetailsView(champion: champ)) {
                    HStack {
                        ZStack(alignment: .bottomLeading) {
                           
                            AsyncImage(url: URL(string: champ.image.url)) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                Color.gray
                            }
                            .frame(width: 300, height: 180)
                            .clipped()
                            .cornerRadius(10)
                            
                         
                            Text(champ.name)
                                .bold()
                                .foregroundColor(.white)
                                .padding(5)
                                .font(.title)
                                .cornerRadius(5)
                                .offset(x: 20, y: -40)
                            Text("Pour en savoir plus sur \(champ.name)...")
                                .foregroundColor(.gray)
                                .offset(x: 25, y: -20)
                                .font(.body)
                                
                        }
                        
                    }
                    
                }
                .navigationTitle("League of Legends explorers")
            }
        }
    }
    
}

#Preview {
    ChampionView()
}
