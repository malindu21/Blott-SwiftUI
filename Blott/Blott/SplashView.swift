//
//  SplashView.swift
//  Blott
//
//  Created by Blott App on 2024-01-04.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Set the background color to black
            
            if self.isActive {
                OnboardingNameView()
            } else {
                Image("Logo-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 188, height: 188)
            }
        }
        .preferredColorScheme(.light)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
