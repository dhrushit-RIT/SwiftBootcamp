//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var view1: some View {
        VStack {
            Text("One")
            Text("Two")
            Text("Three")
        }
    }
    
    var view2: some View {
        VStack {
            ForEach(0..<10) { index in
//                Text("Hi: \(index)")
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index is: \(index)")
                }
            }
        }
    }
    
    var view3: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
    
    var body: some View {
        view1
        view2
        view3
    }
}

#Preview {
    ForEachBootcamp()
}
