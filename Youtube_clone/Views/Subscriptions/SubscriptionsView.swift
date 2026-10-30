//
//  SubscriptionsView.swift
//  Youtube_clone
//
//  Created by sachin on 29/10/26.
//

import SwiftUI

struct SubscriptionsView: View {
    var body: some View {
        VStack(spacing: 0) {
            TopBarView()
            Spacer()
            Text("Subscriptions")
                .font(.largeTitle)
            Spacer()
        }
    }
}

#Preview {
    SubscriptionsView()
}
