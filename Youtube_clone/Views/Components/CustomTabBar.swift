//
//  CustomTabBar.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

enum AppTab {
    case home, shorts, subscriptions, library
}

enum TabIcon {
    case system(String)
    case asset(normal: String, selected: String)
}

struct CustomTabBar: View {
    @Binding var selectedTab: AppTab
    var onCreateTapped: () -> Void

    var body: some View {
        HStack(spacing: 0) {
            TabBarItem(title: "Home", icon: .system("house"), isSelected: selectedTab == .home) {
                selectedTab = .home
            }

            TabBarItem(title: "Shorts", icon: .asset(normal: "shorts", selected: "shorts_selected"), isSelected: selectedTab == .shorts) {
                selectedTab = .shorts
            }

            Button(action: onCreateTapped) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 40, weight: .thin))
            }
            .frame(maxWidth: .infinity)

            TabBarItem(title: "Subscriptions", icon: .system("rectangle.stack.badge.play"), isSelected: selectedTab == .subscriptions) {
                selectedTab = .subscriptions
            }

            TabBarItem(title: "Library", icon: .system("play.square.stack"), isSelected: selectedTab == .library) {
                selectedTab = .library
            }
        }
        .padding(.top, 8)
        .buttonStyle(.plain)
        .foregroundStyle(.primary)
        .background(Color(.systemBackground).ignoresSafeArea(edges: .bottom))
        .overlay(alignment: .top) {
            Divider()
        }
    }
}

private struct TabBarItem: View {
    let title: String
    let icon: TabIcon
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                switch icon {
                case .system(let name):
                    Image(systemName: name)
                        .font(.system(size: 22))
                        .symbolVariant(isSelected ? .fill : .none)
                case .asset(let normal, let selected):
                    Image(isSelected ? selected : normal)
                        .resizable()
                        .frame(width: 24, height: 24)
                }

                Text(title)
                    .font(.system(size: 11))
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    @Previewable @State var tab: AppTab = .home

    VStack {
        Spacer()
        CustomTabBar(selectedTab: $tab, onCreateTapped: {})
    }
}
