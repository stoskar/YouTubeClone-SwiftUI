//
//  SplashView.swift
//  Youtube_clone
//
//  Created by sachin on 28/10/26.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isAnimating = false

    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            Image("AppLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .scaleEffect(isAnimating ? 1 : 0.6)
                .opacity(isAnimating ? 1 : 0)
        }
        .onAppear {
            withAnimation(.spring(duration: 0.8)) {
                isAnimating = true
            }
        }
        
    }
}


#Preview {
    SplashView()
}

