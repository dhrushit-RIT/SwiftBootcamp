//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/19/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World! This is Dhrushit")
//            .background(Color.green)
////            .frame(width: 100, height: 100, alignment: .center)
////            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
        Text("Hello World!")
            .background(Color.red)
            .frame(height:100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
