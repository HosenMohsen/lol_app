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
            VStack(spacing: 20) {
                ZStack(alignment: .topLeading) {
                    AsyncImage(url: URL(string: champion.image.url)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                    } placeholder: {
                        Color.gray
                    }
                    
//                    LinearGradient(
//                        colors: [Color.black.opacity(0.6), Color.clear],
//                        startPoint: .bottom,
//                        endPoint: .top
//                    )
//                    .frame(height: 300)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(champion.name)
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        Text(champion.title)
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.85))
                    }
                    .padding()
                }
                .cornerRadius(12)
                .padding(.horizontal)
                
                
                VStack (alignment: .leading, spacing: 20) {
                    HStack {
                        ForEach(champion.role, id: \.self) {
                            role in Text(role)
                                .font(.caption)
                                .padding(.vertical, 4)
                                .padding(.horizontal, 5)
                                .background(Color.roleColor(for: role).opacity(0.15))
                                .foregroundColor(Color.roleColor(for: role))
                                .cornerRadius(8)
                        }
                        
                        ForEach(champion.tags, id: \.self) {
                            tag in Text(tag)
                                .font(.caption)
                                .padding(.vertical, 4)
                                .padding(.horizontal, 5)
                                .background(Color.black.opacity(0.25))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Lore")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("\(champion.blurb)")
                        .font(.body)
                        .foregroundColor(.white.opacity(0.85))
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.9), Color.gray.opacity(0.4)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.purple.opacity(0.4), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 4)
                .padding(.horizontal)
                .padding(.bottom, 10)
            }
            
            if !champion.skins.isEmpty {
                SkinCarouselView(skins: champion.skins)
            }

        }
        .navigationTitle(champion.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    ChampionView()
}
