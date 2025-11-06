import SwiftUI
import PhotosUI
import DesignSystem

struct ChampionView: View {
    @StateObject private var championModel = ChampionsViewModel()
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    SearchBarView(searchText: $searchText)
                        .padding(.horizontal)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                    LazyVStack(spacing: 20) {
                        ForEach(championModel.champions.filter {
                            searchText.isEmpty ? true : $0.name.lowercased().contains(searchText.lowercased())
                        }, id: \.id) { champ in
                            ChampionCardView(champion: champ)
                        }
                    }
                    .padding(.top, 0)
                }
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Colors.light, Colors.ligh2]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            )
            .navigationTitle("Liste des champions")
        }


    }
}

#Preview {
    ChampionView()
}

