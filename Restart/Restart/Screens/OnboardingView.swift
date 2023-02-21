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
        VStack {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        }  //: End of VStack
    }
}

// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
