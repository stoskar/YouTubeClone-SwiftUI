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
                    videoCard
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
                    let isSelected = category == selectedCategory
                    
                    Button {
                        selectedCategory = category
                    } label: {
                        Text(category)
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
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 8)
    }
    
    private var videoCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            Rectangle()
                .fill(Color(.secondarySystemBackground))
                .aspectRatio(16/9, contentMode: .fit)
                .overlay(alignment: .bottomTrailing) {
                    Text("12:40")
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
                    Text("Config 2022 Opening Keynote - Dylan Field")
                        .font(.system(size: 16))
                        .lineLimit(2)

                    Text("Figma · 437K views · 7 days ago")
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
                        shortCard
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.top, 8)
    }
    
    private var shortCard: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color(.secondarySystemBackground))
            .frame(width: 160, height: 284)
            .overlay(alignment: .topTrailing) {
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .padding(12)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Config 2022 Opening Keynote - Dylan Field")
                        .font(.system(size: 14, weight: .medium))
                        .lineLimit(2)

                    Text("166K views")
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                }
                .padding(10)
            }
    }
}

#Preview {
    HomeView()
}
