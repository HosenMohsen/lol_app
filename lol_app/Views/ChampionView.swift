import SwiftUI
import PhotosUI
import DesignSystem

struct ChampionView: View {
    @StateObject private var championModel = ChampionsViewModel()
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            // SearchBarView(searchText: $searchText)
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(championModel.champions, id: \.id) { champ in
                                ChampionCardView(champion: champ)
                            }
                }
                .padding(.top)
            }
            .navigationTitle("Liste des champions")
        }
    }
}

#Preview {
    ChampionView()
}

