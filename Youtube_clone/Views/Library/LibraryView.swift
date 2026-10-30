//
//  LibraryView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack(spacing: 0) {
            TopBarView()
            Spacer()
            Text("Library")
                .font(.largeTitle)
            Spacer()
        }
    }
}

#Preview {
    LibraryView()
}
