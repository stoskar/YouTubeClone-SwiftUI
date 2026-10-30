//
//  ShortsView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct ShortsView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 0) {
                topBar
                Spacer()

                HStack(alignment: .bottom, spacing: 12) {
                    videoInfo
                    Spacer()
                    actionColumn
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 12)
            }
        }
        .foregroundStyle(.white)
    }

    private var topBar: some View {
        HStack(spacing: 24) {
            Spacer()
            Image(systemName: "magnifyingglass")
            Image(systemName: "camera")
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
        }
        .font(.system(size: 20))
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }

    private var videoInfo: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Circle()
                    .fill(.gray)
                    .frame(width: 32, height: 32)

                Text("@stevenhechinese")
                    .font(.system(size: 14, weight: .medium))

                Text("Subscribe")
                    .font(.system(size: 14, weight: .medium))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }

            Text("How ASIANS Pack Lunch Steven He")
                .font(.system(size: 15))
                .lineLimit(2)

            HStack(spacing: 8) {
                Image(systemName: "music.note")
                Text("Original Sound")
            }
            .font(.system(size: 13))
        }
    }

    private var actionColumn: some View {
        VStack(spacing: 20) {
            ShortsActionButton(systemName: "hand.thumbsup.fill", label: "24K")
            ShortsActionButton(systemName: "hand.thumbsdown.fill", label: "Dislike")
            ShortsActionButton(systemName: "text.bubble.fill", label: "106")
            ShortsActionButton(systemName: "arrowshape.turn.up.right.fill", label: "Share")
            ShortsActionButton(systemName: "arrow.triangle.2.circlepath", label: "Remix")

            RoundedRectangle(cornerRadius: 6)
                .fill(.gray)
                .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    ShortsView()
}
