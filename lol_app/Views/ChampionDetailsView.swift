//
//  ChampionDetails.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import SwiftUI

struct ChampionDetailsView: View {
    let champion: Champion
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20) {
                AsyncImage(url: URL(string: champion.image.url)) { image in
                    image.resizable().scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 200)
                
                Text(champion.name).bold()
                Text(champion.title)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(champion.tags.joined(separator: ", "))
                    .font(.caption)
                    .foregroundColor(.blue)
                
                Text("\(champion.blurb)")
                    .lineLimit(nil)
                
                Text(champion.role.joined(separator: ", "))
                    .font(.caption)
                    .foregroundColor(.blue)

            }
            .padding()
        }
        .navigationTitle(champion.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    ChampionView()
}

