//
//  InitAndEnums.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

/// It creates a init function for us with these parameters.
/// It looks like:
/**
 init(backgroundColor: Color, count: Int, title: String) {
     self.backgroundColor = backgroundColor
     self.count = count
     self.title = title
 }
 */

enum Fruit {
    case apple
    case orange
}

struct InitAndEnums: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//        
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }

    
    var view1: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
    var body: some View {
        view1
    }
}

#Preview {
    HStack {
        InitAndEnums(count: 55, fruit: .apple)
        InitAndEnums(count: 100, fruit: .orange)
    }
}
