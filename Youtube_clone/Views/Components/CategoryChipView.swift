//
//  CategoryChipView.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct CategoryChipView: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 14, weight: .medium))
                .padding(.horizontal, 12)
                .frame(height: 32)
                .foregroundStyle(isSelected ? Color(.systemBackground) : Color.primary)
                .background(isSelected ? Color.primary : Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    HStack {
        CategoryChipView(title: "All", isSelected: true) {}
        CategoryChipView(title: "Music", isSelected: false) {}
    }
}
