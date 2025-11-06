//
//  SecondaryButton.swift
//  DesignSystem
//
//  Created by HOSEN Mohsen on 04/11/2025.
//

import SwiftUI


public struct SecondaryButton: View {
    
    var title: String
    var action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(title, action: action)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(16)
            .shadow(radius: 5)
            .italic()
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.black, lineWidth: 1)
            )
    }

}

#Preview {
    SecondaryButton(title: "Secondary") {
        print("Bouton 'Secondary' cliqué")
    }
}
