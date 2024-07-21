//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var view1: some View {
        ScrollView {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                }
            }
        }
    }
    
    var view2: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                }
            }
        }
    }
    
    var view3: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width:300, height: 300)
                }
            }
        }
    }
    
    var view4: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Lazy
    var view5: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
    /**
     
        Note: When using VStack and HStack, we download all the data and set up the UI on the go.
     This is fine for small data sets. But when we have larger ones, this is a problem as we do not want to load everything in one go.
     In this case, use LazyVStack and LazyHStack. This will only create the rows/cols only when it is needed.
     */
    var body: some View {
        //        view1
        //        view2
        //        view3
//        view4
        view5
    }
}

#Preview {
    ScrollViewBootcamp()
}
