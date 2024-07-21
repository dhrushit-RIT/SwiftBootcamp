//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/18/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 400
                )
            )
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
