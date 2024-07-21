//
//  StackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/19/24.
//

import SwiftUI

struct StackBootcamp: View {
    
    var stack1: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
    var stack2: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
    var stack3: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.green)
                .frame(width: 130, height: 130)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
    
    var zStackSimilarToBackground: some View {
        VStack(spacing: 50) {
            // Use ZStack when there are a bunch of layers
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text ("1")
                    .font(.title)
                    .foregroundColor (.white)
            }
            // Use background when its 2-3 layers
            Text ("1")
                .font(.title)
                .foregroundColor(.white)
                .background (
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
    
    var complexStacking: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .trailing) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .fill(.green)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.green)
                        .frame(width: 25, height: 25)
                }
                
            }
        }
    }
    
    var body: some View {
//        stack1
//        stack2
//        stack3
//        zStackSimilarToBackground
        complexStacking
    }
}

#Preview {
    StackBootcamp()
}
