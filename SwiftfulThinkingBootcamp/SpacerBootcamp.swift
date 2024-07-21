//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

/// Spacer usee
/// 1. Helps create space between the objects on the screen.
/// 2. Helps to push the objects away from each other. This allows not knowing how much space is needed to push the objects to the edges.
/// 3. Has a default minimum length. So with minlength nil, it will have some value

struct SpacerBootcamp: View {
    var view1: some View {
        HStack(spacing: nil) {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
        }
        .background(.blue)
    }
    
    // Spacers automatically have the same size so are able to space things out uniformly.
    var view2: some View {
        HStack(spacing: 0) {
            Spacer(minLength: nil)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        }
    }
    
    var view3: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer(minLength: nil)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.purple)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        }
        .background(.yellow)
        .padding(.horizontal, 200)
        .background(.blue)
    }
    
    var view4: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(width: 10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(.yellow)
            .padding()
            .background(.blue)
            Spacer()
                .frame(width: 10)
                .background(.orange)
            Rectangle()
                .frame(height: 55)
        }
        .background(.yellow)
    }
    
    var body: some View {
        view1
        view2
        view3
        view4
    }
}

#Preview {
    SpacerBootcamp()
}
