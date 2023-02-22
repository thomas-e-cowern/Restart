//
//  OnboardingView.swift
//  Restart
//
//  Created by Thomas Cowern on 2/21/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: Body
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                // MARK: Header
                Spacer()
                
                VStack {
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("It's not how much we give, but how much love we put into giving")
                        .multilineTextAlignment(.center)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                }
                // MARK: Center
                ZStack {
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 40)
                        .frame(width: 260, height: 260, alignment: .center)
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 80)
                        .frame(width: 260, height: 260, alignment: .center)
                } //: End of ZStack
                
                Spacer()
                // MARK: Footer
            } //: End of VStack
        } //: End of ZStack
    }
}

// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
