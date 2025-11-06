//
//  SkinCarrouselView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 06/11/2025.
//

import SwiftUI
import DesignSystem


struct SkinCarouselView: View {
    let skins: [Skin]
    
    @State private var currentIndex: Int = 0

    var body: some View {
            TabView(selection: $currentIndex) {
                ForEach(skins) { skin in
                    AsyncImage(url: URL(string: skin.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                    .tag(skin.id)
                   
                }
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 300)
            .cornerRadius(15)
            .shadow(radius: 8)
            .padding(.horizontal)
            .padding(.bottom, 20)
            .animation(.easeInOut, value: currentIndex)
        }
}
