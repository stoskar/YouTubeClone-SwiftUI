//
//  ShortsActionButton.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct ShortsActionButton: View {
    let systemName: String
    let label: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: systemName)
                    .font(.system(size: 24))
                Text(label)
                    .font(.system(size: 12))
            }
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ShortsActionButton(systemName: "hand.thumbsup.fill", label: "24K") {
        print("Like tapped")
    }
    .padding()
    .background(.black)
    .foregroundStyle(.white)
}
