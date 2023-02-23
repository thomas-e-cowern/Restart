//
//  HomeView.swift
//  Restart
//
//  Created by Thomas Cowern on 2/21/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {

            // MARK: Header
            
            Spacer()
            
            ZStack {
                
                CircleGroupVIew(shapeColor: .gray, shapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(Animation.easeOut(duration: 4) .repeatForever(),  value: isAnimating)
            }
            
            
            
            // MARK: Center
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .multilineTextAlignment(.center)
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .padding(.horizontal, 20)
            
            
            // MARK: Footer
            
            Spacer()
        
            Button {
                playSound(sound: "success", type: "m4a")
                withAnimation {
                    isOnboardingViewActive = true
                }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }  //: End of VStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
                
            })
        }
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
