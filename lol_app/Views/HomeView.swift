//
//  HomeView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 06/11/2025.
//


import SwiftUI
import DesignSystem

struct HomeView: View {
    @State private var goToChampionView = false
    

    var body: some View {
        ZStack{
            Image("Image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(height: 900)
                .cornerRadius(20)
                .shadow(radius: 10)
              //  .padding(.bottom, 100)
            
                Color.black.opacity(0.45)
                               .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                Text("LEAGUE OF LEGENDS EXPLORERS")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                PrimaryButton(title: "Voir les champions") {
                    goToChampionView = true
                }
                .padding(.horizontal, 50)
                      .padding(.bottom,160)

            }
            .navigationTitle("Accueil")
            .navigationDestination(isPresented: $goToChampionView) {
                ChampionView()
            }
        }
        }
        
}
    

#Preview {
    HomeView()
}
