//
//  MoreButton.swift
//  Youtube_clone
//
//  Created by sachin on 30/10/26.
//

import SwiftUI

struct MoreButton: View {
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
                .font(.system(size: 14))
                .frame(width: 24, height: 24)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    MoreButton {
        print("More tapped")
    }
}
