//
//  CircleGroupVIew.swift
//  Restart
//
//  Created by Thomas Cowern on 2/22/23.
//

import SwiftUI

struct CircleGroupVIew: View {
    
    // MARK: - Properties
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: End of ZStack
    }
}

// MARK: - Preview
struct CircleGroupVIew_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(.all)
            
            CircleGroupVIew(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
