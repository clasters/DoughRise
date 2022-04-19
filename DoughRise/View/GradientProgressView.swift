//
//  GradientProgressView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct GradientProgressView: View {
    var cornerRadius: CGFloat
    var height: CGFloat
    var gradient: Gradient
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
            .frame(height: height)
           
            
    }
}

struct GradientProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GradientProgressView(
            cornerRadius: 10,
            height: 35,
            gradient: Gradient(colors: [Color(AppPalette.shared.foodGradientStart), Color(AppPalette.shared.foodGradientEnd)])
        )
    }
}
