//
//  CircleGroupVIew.swift
//  Restart
//
//  Created by Thomas Cowern on 2/22/23.
//

import SwiftUI

struct CircleGroupVIew: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: End of ZStack
    }
}

struct CircleGroupVIew_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(.all)
            
            CircleGroupVIew()
        }
    }
}
