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
                        .clipped()
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 200)
                
                HStack {
                    Text(champion.name).bold()
                    Text(champion.title)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                HStack {
                    
                    Text(champion.role.joined(separator: ", "))
                        .font(.body)
                        .foregroundColor(.black)
                    
                    Text(champion.tags.joined(separator: ", "))
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                 

                }
                
                Text("\(champion.blurb)")
                  //  .lineLimit(nil)
                
               
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

