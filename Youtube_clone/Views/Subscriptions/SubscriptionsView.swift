//
//  SubscriptionsView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct SubscriptionsView: View {

    private let filters = ["All", "Today", "Continue watching", "Unwatched"]
    @State private var selectedFilter = "All"

    var body: some View {
        VStack(spacing: 0) {
            TopBarView()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    channelsRow
                    filterChips

                    ForEach(0..<3) { _ in
                        VideoCardView(
                            title: "Config 2022 Opening Keynote - Dylan Field",
                            channelName: "Figma",
                            views: "437K views",
                            uploadedAgo: "7 days ago",
                            duration: "12:40"
                        )
                    }
                }
            }
        }
    }

    private var channelsRow: some View {
        HStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<8) { _ in
                        VStack(spacing: 6) {
                            Circle()
                                .fill(.gray)
                                .frame(width: 64, height: 64)
                                .overlay(alignment: .bottomTrailing) {
                                    Circle()
                                        .fill(.blue)
                                        .frame(width: 10, height: 10)
                                        .overlay(Circle().stroke(Color(.systemBackground), lineWidth: 2))
                                }

                            Text("Kola Bear")
                                .font(.system(size: 12))
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                        .frame(width: 72)
                    }
                }
                .padding(.horizontal, 16)
            }

            Button("All") {}
                .font(.system(size: 15, weight: .medium))
                .foregroundStyle(.blue)
                .padding(.horizontal, 16)
        }
        .padding(.top, 8)
    }

    private var filterChips: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(filters, id: \.self) { filter in
                    CategoryChipView(title: filter, isSelected: filter == selectedFilter) {
                        selectedFilter = filter
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    SubscriptionsView()
}
