//
//  VideoCardView.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct VideoCardView: View {
    let title: String
    let channelName: String
    let views: String
    let uploadedAgo: String
    let duration: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Rectangle()
                .fill(Color(.secondarySystemBackground))
                .aspectRatio(16/9, contentMode: .fit)
                .overlay(alignment: .bottomTrailing) {
                    Text(duration)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 2)
                        .background(.black.opacity(0.8))
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                        .padding(8)
                }

            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .fill(.gray)
                    .frame(width: 36, height: 36)

                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 16))
                        .lineLimit(2)

                    Text("\(channelName) · \(views) · \(uploadedAgo)")
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                }

                Spacer()

                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .font(.system(size: 14))
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    VideoCardView(
        title: "Config 2022 Opening Keynote - Dylan Field",
        channelName: "Figma",
        views: "437K views",
        uploadedAgo: "7 days ago",
        duration: "12:40"
    )
}
