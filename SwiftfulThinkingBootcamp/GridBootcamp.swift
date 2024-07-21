//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/20/24.
//

import SwiftUI

struct GridBootcamp: View {
    let columns1: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    let columns2: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var view1: some View {
        LazyVGrid(columns: columns1, content: {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        })
    }
    
    // Flexible allows to scale to appropriate size based on the device.
    var flexibleGridItems: some View {
        LazyVGrid(columns: columns2, content: {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        })
    }
    
    let adaptiveColumns: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
    ]
    
    var adaptiveGridItems: some View {
        LazyVGrid(columns: adaptiveColumns, content: {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        })
    }
    
    let realWorldColumns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    // instagram profile example
    var realWorldExample: some View {
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 400)
            LazyVGrid(columns: realWorldColumns, content: {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            })
        }
    }
    
    let fixedSectionHeaders: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil), // spacing between the columns
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    // instagram profile example
    var fixedSectionHeadersGrid: some View {
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 400)
            LazyVGrid(columns: fixedSectionHeaders,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]
            ) {
                Section(
                    header: Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                Section(
                    header: Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.orange)
                        .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                }
            }
        }
    }
    
    var body: some View {
//        view1
//        flexibleGridItems
//        adaptiveGridItems
//        realWorldExample
        fixedSectionHeadersGrid
    }
}

#Preview {
    GridBootcamp()
}
