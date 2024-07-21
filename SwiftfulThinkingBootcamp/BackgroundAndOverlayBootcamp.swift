//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/19/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    
    var test1: some View {
        Text("Hello, World!")
//            .frame(width: 100, height: 100, alignment: .center)
            .background(
                Circle()
//                    .fill(Color.blue)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
//            .frame(width: 120, height: 120, alignment: .center)
            .background(
                Circle()
//                    .fill(Color.red)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
    }
    
    var test2: some View {
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
    }
    
    var test3: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50),
                alignment: .center
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150),
                alignment: .bottomTrailing
            )
    }
    
    var test4: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black.opacity(0.5), radius: 10, x:0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.purple)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            ),
                        alignment: .bottomTrailing
                    )
            )
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 100) {
            test1
            test2
            test3
            test4
        }
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
