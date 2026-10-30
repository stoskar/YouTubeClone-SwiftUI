//
//  ShortCardView.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct ShortCardView: View {
    let title: String
    let views: String
    var onMoreTapped: () -> Void = {}

    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color(.secondarySystemBackground))
            .frame(width: 160, height: 284)
            .overlay(alignment: .topTrailing) {
                MoreButton(action: onMoreTapped)
                    .padding(8)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(.system(size: 14, weight: .medium))
                        .lineLimit(2)

                    Text(views)
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                }
                .padding(10)
            }
    }
}

#Preview {
    ShortCardView(
        title: "Config 2022 Opening Keynote - Dylan Field",
        views: "166K views"
    )
}
