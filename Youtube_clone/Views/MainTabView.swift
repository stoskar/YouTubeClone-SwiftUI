//
//  MainTabView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        Group {
            switch selectedTab {
            case .home:
                HomeView()
            case .shorts:
                ShortsView()
            case .subscriptions:
                SubscriptionsView()
            case .library:
                LibraryView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, spacing: 0) {
            CustomTabBar(selectedTab: $selectedTab, onCreateTapped: {})
        }
    }
}

#Preview {
    MainTabView()
}
