//
//  SearchBarView.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 05/11/2025.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String 
    
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Rechercher un champion", text: $searchText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .autocorrectionDisabled(true)
                
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(10)
            .background(Color.white.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
        }
       
    }
}

