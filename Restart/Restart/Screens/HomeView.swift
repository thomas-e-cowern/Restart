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
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center) {
            Color(.white)
                .ignoresSafeArea(.all)

            // MARK: Header
            
            Spacer()
            
            Image("character-2")
                .resizable()
                .scaledToFit()
            
            ZStack {
                Circle()
                    .stroke(.gray.opacity(0.2), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(.gray.opacity(0.2), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                
                
            }
            //: End of ZStack
            
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
                isOnboardingViewActive = true
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
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
