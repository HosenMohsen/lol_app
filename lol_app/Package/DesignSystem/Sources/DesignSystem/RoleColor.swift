//
//  RoleColor.swift
//  lol_app
//
//  Created by HOSEN Mohsen on 06/11/2025.
//


import SwiftUI

extension Color {
   public static func roleColor(for role: String) -> Color {
        switch role.lowercased() {
        case "mid":
            return .red
        case "top":
            return .blue
        case "jungle":
            return .orange
        case "support":
            return .green
        case "adc":
            return .purple
        default:
            return .gray
        }
    }
}
