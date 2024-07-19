//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/18/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
//            .fill(Color.blue)
//            .foregroundColor(.red)
//            .stroke(Color.red)
//            .stroke(lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//        partial circle
            .trim(from: 0.2, to: 1.0)
            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
        Ellipse()
            .frame(width: 200, height: 100)
        
        Capsule(style: .circular)
            .stroke(Color.purple, lineWidth: 20)
        
        RoundedRectangle(cornerRadius: 50)
            .stroke(Color.red, lineWidth: 10)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
