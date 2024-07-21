//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var view1: some View {
        Text("Hello, World! This is fun.")
//            .frame(width: 100, height: 100) // not good if we want the text to be dynamically adjusting the spacing
            .background(.yellow)
//            .padding()
            .padding(.all, 10)
            .background(.blue)
    }
    
    var view2: some View {
        Text("Hello, World! This is fun.")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.red)
            .padding(.leading, 20)
    }
    
    var view3: some View {
        VStack(alignment: .leading) {
            Text("Hello, World! This is fun.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding()
        .background(.red)
        .padding(.horizontal, 10)
    }
    
    var body: some View {
        view1
        view2
        
        view3
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
