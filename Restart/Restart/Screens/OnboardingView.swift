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
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    
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
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                
                
                // MARK: Center
                ZStack {
                    CircleGroupVIew(shapeColor: .white, shapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.easeOut(duration: 1.0), value: isAnimating)
                    
                } //: End of ZStack
                
                Spacer()
                // MARK: Footer
                ZStack {
                    // MARK: Static background
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                     
                    // MARK: Call to action
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    // MARK: Capsule dynamic
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80)
                        
                        Spacer()
                    }
                    
                    // MARK: Circle draggable
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        } //: End of ZStack
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .offset(x: buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                        buttonOffset = gesture.translation.width
                                    }
                                })
                                .onEnded { _ in
                                    withAnimation(Animation.easeOut(duration: 0.9)) {
                                        if buttonOffset > buttonWidth / 2 {
                                            buttonOffset = buttonWidth - 80
                                            isOnboardingViewActive = false
                                        } else {
                                            buttonOffset = 0
                                        }
                                    }
                                }
                        ) // MARK: End of gesture
                        
                        Spacer()
                    } //: End of HStack
                    
                }
                .frame(width: buttonWidth, height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 40)
                .animation(.easeOut(duration: 1), value: isAnimating)
            } //: End of VStack
        } //: End of ZStack
        .onAppear {
            isAnimating = true
        }
    }
}

// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
