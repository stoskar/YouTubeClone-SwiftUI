//
//  HomeView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct HomeView: View {
    
    private let categories = ["All", "Under 10 min", "Music", "Manga", "Gaming", "Live", "News"]
    @State private var selectedCategory = "All"
    
    var body: some View {
        VStack(spacing: 0) {
            topBar
            categoryChips
            
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    VideoCardView(
                        title: "Config 2022 Opening Keynote - Dylan Field",
                        channelName: "Figma",
                        views: "437K views",
                        uploadedAgo: "7 days ago",
                        duration: "12:40"
                    )
                    shortsSection
                }
            }
        }
    }
    
    private var topBar: some View {
        HStack(spacing: 20) {
            HStack(spacing: 4) {
                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                
                Text("YouTube")
                    .font(.system(size: 20, weight: .bold))
                    .tracking(-1)
            }
            
            Spacer()
            
            Image(systemName: "airplayvideo")
            Image(systemName: "bell")
            Image(systemName: "magnifyingglass")
            
            Circle()
                .fill(.gray)
                .frame(width: 28, height: 28)
        }
        .font(.system(size: 20))
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
    
    private var categoryChips: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                Image(systemName: "safari")
                    .font(.system(size: 18))
                    .frame(width: 48, height: 32)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                ForEach(categories, id: \.self) { category in
                    CategoryChipView(title: category, isSelected: category == selectedCategory) {
                        selectedCategory = category
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 8)
    }
    
    private var shortsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: "play.rectangle.on.rectangle.fill")
                    .foregroundStyle(.red)

                Text("Shorts")
                    .font(.system(size: 18, weight: .semibold))
            }
            .padding(.horizontal, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<5) { _ in
                        ShortCardView(
                            title: "Config 2022 Opening Keynote - Dylan Field",
                            views: "166K views"
                        )
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.top, 8)
    }
}

#Preview {
    HomeView()
}
