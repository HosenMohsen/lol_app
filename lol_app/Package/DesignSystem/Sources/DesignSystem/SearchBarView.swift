//
//  SearchBarView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import SwiftUI

public struct SearchBarView: View {
    @Binding var searchText: String
    
    public init(searchText: Binding<String>) {
        self._searchText = searchText
    }
    
    public var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white.opacity(0.85))
            
            TextField(
                "",
                text: $searchText,
                prompt: Text("Rechercher un champion")
                    .foregroundColor(.white.opacity(0.85))
            )
            .textFieldStyle(.plain)
            .autocorrectionDisabled(true)
            .foregroundColor(.white)
            
            if !searchText.isEmpty {
                Button { searchText = "" } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white.opacity(0.9))
                }
            }
        }
        .padding(10)
        .background(Colors.search)
        .cornerRadius(10)
    }
}





    
