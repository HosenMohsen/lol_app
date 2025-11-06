//
//  ChampionCardView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 06/11/2025.
//



import SwiftUI

struct ChampionCardView: View {
    let champion: Champion
    
    var body: some View {
        NavigationLink(destination: ChampionDetailsView(champion: champion)) {
            ZStack(alignment: .bottomLeading) {
              
                AsyncImage(url: URL(string: champion.image.url)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray.opacity(0.3)
                }
                .frame(height: 200)
                .clipped()
                .cornerRadius(15)
                .shadow(radius: 5)
                
              
                LinearGradient(
                    gradient: Gradient(colors: [Color.black.opacity(0.7), Color.clear]),
                    startPoint: .bottom,
                    endPoint: .top
                )
                .cornerRadius(15)
                
         
                VStack(alignment: .leading, spacing: 4) {
                    Text(champion.name)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("Pour en savoir plus sur \(champion.name)...")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            .padding(.horizontal)
        }
    }
}
