//
//  TopBarView.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct TopBarView: View {
    var onCastTapped: () -> Void = {}
    var onNotificationsTapped: () -> Void = {}
    var onSearchTapped: () -> Void = {}
    var onProfileTapped: () -> Void = {}

    var body: some View {
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

            iconButton("airplayvideo", action: onCastTapped)
            iconButton("bell", action: onNotificationsTapped)
            iconButton("magnifyingglass", action: onSearchTapped)

            Button(action: onProfileTapped) {
                Circle()
                    .fill(.gray)
                    .frame(width: 28, height: 28)
            }
        }
        .buttonStyle(.plain)
        .font(.system(size: 20))
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }

    private func iconButton(_ systemName: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: systemName)
        }
    }
}

#Preview {
    TopBarView()
}
