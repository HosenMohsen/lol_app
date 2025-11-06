//
//  Button.swift
//  DesignSystem
//
//  Created by HOSEN Mohsen on 04/11/2025.
//

import SwiftUI


public struct PrimaryButton: View {
    
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
               .background(Colors.primary)
               .foregroundColor(.white)
               .cornerRadius(16)
               .shadow(radius: 5)
             //  .opacity(1.0)
               .italic()
       }
    
}

#Preview {
    PrimaryButton(title: "Continue") {
        print("Bouton 'Continue' cliqué")
    }
}
